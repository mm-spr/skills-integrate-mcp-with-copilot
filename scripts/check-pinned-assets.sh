#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

status=0

check_requirements() {
  while IFS= read -r line; do
    [[ -z "$line" || "$line" =~ ^[[:space:]]*# ]] && continue

    if [[ ! "$line" =~ ^[A-Za-z0-9._-]+(\[[A-Za-z0-9_,.-]+\])?==[^[:space:]]+([[:space:]]*;[[:space:]].+)?$ ]]; then
      echo "Unpinned Python dependency in requirements.txt: $line" >&2
      status=1
    fi
  done < requirements.txt
}

check_workflows() {
  while IFS= read -r file; do
    while IFS= read -r raw_line; do
      line="${raw_line#*:}"
      ref="$(printf '%s' "$line" | sed -E 's/^[[:space:]]*uses:[[:space:]]*([^[:space:]]+).*$/\1/')"

      [[ -z "$ref" || "$ref" == ./* ]] && continue
      [[ "$ref" == docker://* ]] && continue

      if [[ "$ref" != *@* ]]; then
        echo "Workflow reference without pinned ref in $file: $ref" >&2
        status=1
        continue
      fi

      version="${ref##*@}"
      if [[ ! "$version" =~ ^[0-9a-f]{40}$ ]]; then
        echo "Workflow reference is not pinned to a commit SHA in $file: $ref" >&2
        status=1
      fi
    done < <(rg -n '^[[:space:]]*uses:' "$file")
  done < <(find .github/workflows -name '*.yml' -o -name '*.yaml' | sort)
}

check_pip_commands() {
  while IFS= read -r match; do
    if [[ ! "$match" =~ (--requirement|-r)[[:space:]]+([^[:space:]]*/)?requirements\.txt ]]; then
      echo "Direct pip install command must use requirements.txt: $match" >&2
      status=1
    fi
  done < <(rg -n '(python[0-9.]* -m )?pip install ' . --glob '!scripts/check-pinned-assets.sh')
}

check_requirements
check_workflows
check_pip_commands

exit "$status"