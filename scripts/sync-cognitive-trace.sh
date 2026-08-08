#!/usr/bin/env bash
# sync-cognitive-trace.sh — pull the latest Cognitive Trace plugin from the
# upstream repo and rebuild main.js, keeping the demo's bundled copy fresh.
#
# Usage: ./scripts/sync-cognitive-trace.sh
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DST="$REPO_ROOT/.obsidian/plugins/cognitive-trace"
TMP="$(mktemp -d)"

trap 'rm -rf "$TMP"' EXIT

echo "→ Cloning upstream syberloop/cognitive-trace ..."
git clone --depth 1 https://github.com/syberloop/cognitive-trace.git "$TMP/plugin" 2>&1 | tail -1

echo "→ Building main.js ..."
(cd "$TMP/plugin" && npm install --silent && npm run build 2>&1 | tail -2)

echo "→ Syncing files into demo ..."
rm -rf "$DST"
mkdir -p "$DST"
cp -r "$TMP/plugin"/* "$DST/"
rm -f "$DST/event_log.jsonl" "$DST/data.json"
rm -rf "$DST/node_modules" "$DST/.git"

# The demo versioned .gitignore forces main.js to be tracked.
cat > "$DST/.gitignore" <<'EOF'
# Dependencies
node_modules/

# NOTE: main.js IS VERSIONED in this demo (decision B — plugin works
# out of the box without npm). Rebuild with `npm run build` when syncing
# from the upstream repo.

# Runtime trace data (agent events, not code)
event_log.jsonl
*.db
*.db-journal

# User config in Obsidian
data.json

# System
.DS_Store
EOF

echo "✅ Synced. Commit the changes: git add -A && git commit"
