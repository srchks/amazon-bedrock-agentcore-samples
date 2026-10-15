#!/usr/bin/env bash
# PostToolUse hook: auto-format the file Claude just edited. Never fails the edit.
file=$(jq -r '.tool_input.file_path // empty')
[ -z "$file" ] || [ ! -f "$file" ] && exit 0
case "$file" in
  *.py)                      command -v ruff >/dev/null && ruff format -q "$file" ;;
  *.js|*.jsx|*.ts|*.tsx|*.json|*.md|*.css)
                             command -v npx  >/dev/null && npx --no-install prettier --write --log-level silent "$file" ;;
  *.go)                      command -v gofmt >/dev/null && gofmt -w "$file" ;;
  *.sh)                      command -v shfmt >/dev/null && shfmt -w "$file" ;;
esac
exit 0
