#!/usr/bin/env bash
# Install dependencies and prepare a local environment.
set -euo pipefail
cd "$(dirname "$0")/.."
[ -f .env ] || cp .env.example .env
# TODO: e.g. `uv sync` / `pip install -r requirements.txt` / `npm ci`
echo "Setup complete."
