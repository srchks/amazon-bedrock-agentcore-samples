# <Project Name>

One-paragraph description of what this project does and who it's for.

## Getting started

```bash
./scripts/setup.sh      # install dependencies, create .env from .env.example
claude                  # start Claude Code in the repo root
```

## Repository layout

```
.
├── CLAUDE.md                  # Project memory loaded into every Claude Code session (commit this)
├── CLAUDE.local.md            # Your personal notes for Claude (gitignored, create if needed)
├── .mcp.json                  # Project-scoped MCP servers shared with the team
├── .claude/
│   ├── settings.json          # Shared permissions + hooks (commit this)
│   ├── settings.local.json    # Personal overrides (gitignored)
│   ├── agents/                # Subagents: focused workers with their own context window
│   ├── skills/                # Skills / slash commands: /fix-issue, /new-feature
│   └── hooks/                 # Scripts run by hooks in settings.json
├── .github/
│   ├── workflows/ci.yml       # Lint + test on every PR
│   ├── workflows/claude.yml   # @claude in issues/PRs via claude-code-action
│   └── pull_request_template.md
├── docs/
│   ├── architecture.md        # Longer-form context CLAUDE.md links to
│   └── decisions/             # Architecture Decision Records (ADRs)
├── scripts/                   # Dev scripts (setup, lint, test) Claude can call
├── src/                       # Application code
└── tests/                     # Tests mirror src/
```

## Working with Claude Code

- **Explore → plan → code → commit.** Ask Claude to read relevant files first, use plan mode
  (Shift+Tab) for non-trivial changes, then implement and verify with tests.
- **Give it a way to verify.** Tests, type checks, and linters in `scripts/` let Claude check its own work.
- **Keep `CLAUDE.md` short and current.** Run `/init` to bootstrap it, edit it whenever Claude
  gets something wrong twice, and link to `docs/` rather than inlining long material.
- **Use `/clear` between unrelated tasks** to keep context focused.
- **Delegate investigation to subagents** (`.claude/agents/`) so the main context stays clean.
- **Use worktrees for parallel sessions:** `git worktree add ../proj-feature-x -b feature-x`.
