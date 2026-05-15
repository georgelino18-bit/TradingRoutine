#!/usr/bin/env bash
# Notification wrapper. Posts to a ClickUp Chat channel.
# Usage: bash scripts/clickup.sh "<message>"
# Always exits 0 — ClickUp failures are non-fatal and fall back to DAILY-SUMMARY.md.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/clickup.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

_fallback() {
  printf "\n---\n## %s (fallback — %s)\n%s\n" "$stamp" "$1" "$msg" >> "$FALLBACK"
  echo "[clickup fallback] $1 — logged to DAILY-SUMMARY.md"
}

if [[ -z "${CLICKUP_API_KEY:-}" || -z "${CLICKUP_WORKSPACE_ID:-}" || -z "${CLICKUP_CHANNEL_ID:-}" ]]; then
  _fallback "ClickUp not configured"
  exit 0
fi

payload="$(python3 -c "
import json, sys
print(json.dumps({'type': 'message', 'content': sys.argv[1], 'content_format': 'text/md'}))
" "$msg")"

resp_file="$(mktemp)"
http_code="$(curl -sS \
  -o "$resp_file" \
  -w "%{http_code}" \
  -X POST \
  "https://api.clickup.com/api/v3/workspaces/$CLICKUP_WORKSPACE_ID/chat/channels/$CLICKUP_CHANNEL_ID/messages" \
  -H "Authorization: $CLICKUP_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$payload")" || { _fallback "curl network error"; rm -f "$resp_file"; exit 0; }

if [[ "$http_code" =~ ^2 ]]; then
  cat "$resp_file"
  echo
else
  _fallback "HTTP $http_code"
fi
rm -f "$resp_file"
exit 0
