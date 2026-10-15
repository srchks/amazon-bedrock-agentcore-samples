# <Project Name>

<One or two sentences: what this project is and its main tech stack.>

## Commands
- Setup: `./scripts/setup.sh`
- Test (all): `./scripts/test.sh`
- Test (single): `<e.g. pytest tests/test_foo.py::test_bar  |  npm test -- foo.test.ts>`
- Lint/format: `./scripts/lint.sh`
- Run locally: `<command>`

## Code style
- <Language/version, formatter, and linter in use>
- <Naming, import, and error-handling conventions that differ from defaults>
- Prefer small, focused functions; no dead code or commented-out blocks.

## Workflow
- Read the relevant code and tests before changing anything.
- For non-trivial work, propose a plan before editing.
- Write or update tests with every behavior change; run the single relevant test first, then the full suite.
- Run lint and tests before declaring a task done.
- Commit messages: imperative mood, ≤72-char subject (e.g. `Add retry to S3 upload`).
- Never commit secrets; config comes from environment variables (see `.env.example`).

## Architecture
- `src/` — <brief map of main modules>
- `tests/` — mirrors `src/`
- Deeper context: @docs/architecture.md
- Past decisions: `docs/decisions/`

## Gotchas
- <Things Claude got wrong before, non-obvious constraints, flaky areas>
