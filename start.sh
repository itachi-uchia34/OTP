#!/usr/bin/env bash
set -euo pipefail

# Railway provides PORT at runtime.
PORT="${PORT:-8080}"
exec python3 -m http.server "$PORT" --bind 0.0.0.0 --directory "$(dirname "$0")"
