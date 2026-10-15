#!/usr/bin/env bash
# PreToolUse hook: block edits to secrets, lockfiles, and git internals.
# Exit code 2 blocks the tool call and shows stderr to Claude.
set -euo pipefail
file=$(jq -r '.tool_input.file_path // empty')
[ -z "$file" ] && exit 0
case "$file" in
  *.env|*.env.*|*/secrets/*|*/.git/*|*package-lock.json|*poetry.lock|*uv.lock)
    [[ "$file" == *.env.example ]] && exit 0
    echo "Blocked: $file is protected. Edit it manually or regenerate it with the package manager." >&2
    exit 2 ;;
esac
exit 0
