---
name: fix-issue
description: Fix a GitHub issue end to end — reproduce, test, fix, verify. Invoke as /fix-issue <issue-number-or-description>.
---
Fix the issue: $ARGUMENTS

1. Read the issue (use `gh issue view` if a number was given) and restate the problem.
2. Find the relevant code; reproduce the bug with a failing test in `tests/`.
3. Implement the minimal fix in `src/`.
4. Run the new test, then `./scripts/test.sh` and `./scripts/lint.sh`.
5. Use the `code-reviewer` subagent on the diff and address its findings.
6. Commit with a message referencing the issue (e.g. `Fix X (#123)`).
