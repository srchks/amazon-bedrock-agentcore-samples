---
name: new-feature
description: Plan and implement a new feature with tests. Invoke as /new-feature <description>.
---
Implement this feature: $ARGUMENTS

1. Explore: read related modules, tests, and docs/architecture.md. Do not write code yet.
2. Plan: write a short plan (files to touch, interfaces, test cases, open questions) and wait for approval.
3. Implement in small steps, writing tests alongside the code.
4. Verify with `./scripts/test.sh` and `./scripts/lint.sh`.
5. If the change is architecturally significant, add an ADR in `docs/decisions/`.
6. Update CLAUDE.md if you learned a convention or gotcha future sessions need.
