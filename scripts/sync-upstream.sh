#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
UP="/tmp/od-upstream-sync"
URL="https://github.com/nexu-io/open-design.git"
BRANCH="${1:-main}"

echo "→ 拉取上游 OpenDesign ..."
rm -rf "$UP"
git clone --depth 1 --filter=blob:none --sparse "$URL" "$UP"
cd "$UP"
git sparse-checkout set design-templates design-systems skills prompt-templates

echo "→ 同步四个目录到 dsh-design ..."
rm -rf "$ROOT/design-templates" "$ROOT/design-systems" "$ROOT/skills" "$ROOT/prompt-templates"
cp -R "$UP/design-templates" "$ROOT/design-templates"
cp -R "$UP/design-systems" "$ROOT/design-systems"
cp -R "$UP/skills" "$ROOT/skills"
cp -R "$UP/prompt-templates" "$ROOT/prompt-templates"

mkdir -p "$ROOT/licenses"
cp "$UP/LICENSE" "$ROOT/licenses/OPEN-DESIGN-LICENSE.txt"

echo "→ 提交并推送 ..."
cd "$ROOT"
git add -A
if ! git diff --cached --quiet; then
  git commit -m "chore: sync OpenDesign materials from upstream"
  git push origin "$BRANCH"
  echo "✅ 已同步并推送"
else
  echo "✅ 无更新"
fi
