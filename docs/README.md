# OctoAcme Project Management Docs

OctoAcme follows a structured, iterative project management process built on four core principles:

- **Customer-first** – prioritize customer value and usability in every decision.
- **Iterative delivery** – ship small, testable increments and adapt based on feedback.
- **Clear ownership** – every project has a named Project Manager and Product Lead.
- **Data-informed decisions** – measure impact and iterate based on evidence.

Projects move through five lifecycle phases: **Initiation → Planning → Execution → Release → Retrospective & Continuous Improvement**. Initiation produces a one-pager capturing the problem, SMART goal, success metrics, stakeholders, milestones, initial risks, and resourcing. Planning delivers a kickoff, a prioritized backlog with acceptance criteria and estimates, a documented Definition of Done, dependency mapping, and a release/milestone plan. Execution proceeds in small, testable increments, followed by a structured release, verification, and retrospective-driven improvements.

Roles are explicitly defined to keep decision-making and delivery unambiguous. The **Project Manager (PM)** coordinates delivery mechanics—plans, timelines, risks, dependencies, meetings, and status reporting. The **Product Manager (PdM)** owns outcomes: problem statements, prioritization, trade-offs, and measuring success. **Developers** design, build, and test; they contribute estimates and risk identification, and collaborate through code reviews and technical design docs. **QA/Testing** validates quality and acceptance criteria, while **Stakeholders/Sponsors** provide inputs and approvals at key decision points.

Communication is structured around a predictable cadence and a single source of truth. Day-to-day alignment happens via short standups and a weekly delivery sync, with demos and reviews at sprint or milestone boundaries. Stakeholder communication is planned up front and reinforced with recurring updates using a weekly status template (progress, next steps, risks/blockers, asks/decisions). Risk handling is operationalized through a **risk register** and a three-tier escalation model—team triage, then PM-led escalation to product or dependent teams, and finally sponsor-level escalation for business-impacting issues.

Quality assurance is embedded directly into the workflow. Execution emphasizes a disciplined PR process (small PRs, acceptance criteria and issue links in descriptions, CI checks before review, and at least one approval to merge) and layered testing (unit, integration, and end-to-end smoke tests for critical paths, plus security scanning). Releases follow pre-release requirements (acceptance criteria met, CI/security scans passing, release notes, rollback plan, smoke tests) and a deployment checklist covering staging validation, post-deploy verification, and stakeholder announcements—backed by an incident/rollback playbook and blameless retrospective practice.

## Documentation Index

| Document | Description |
|---|---|
| [Project Management Overview](octoacme-project-management-overview.md) | High-level overview of OctoAcme's project management approach, roles, artifacts, and lifecycle. |
| [Project Initiation](octoacme-project-initiation.md) | Steps to validate, authorize, and kick off new projects or feature proposals. |
| [Project Planning](octoacme-project-planning.md) | Turning an approved initiative into an actionable plan, backlog, and milestone timeline. |
| [Execution & Tracking](octoacme-execution-and-tracking.md) | Day-to-day execution guidance, standups, tracking progress, and managing blockers. |
| [Risk Management & Communication](octoacme-risks-and-communication.md) | Identifying, managing, and communicating risks, dependencies, and escalations. |
| [Release & Deployment](octoacme-release-and-deployment.md) | Standardized release types, deployment checklists, and production observability. |
| [Retrospective & Continuous Improvement](octoacme-retrospective-and-continuous-improvement.md) | Capturing learnings after sprints, releases, or incidents and converting them into improvements. |
| [Roles & Personas](octoacme-roles-and-personas.md) | Definitions of all roles and personas used across OctoAcme project docs and exercises. |
