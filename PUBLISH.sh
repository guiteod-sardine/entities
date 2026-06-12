#!/usr/bin/env bash
# Publish this folder to https://github.com/guiteod-sardine/entities
# Run this from inside the entities-repo folder. Requires git installed + you logged into GitHub.
set -euo pipefail

cd "$(dirname "$0")"

git init -q
git checkout -q -b main 2>/dev/null || git checkout -q main
git add .
git -c user.email="${GIT_AUTHOR_EMAIL:-guilherme.theodoro@sardine.ai}" \
    -c user.name="${GIT_AUTHOR_NAME:-Guilherme Theodoro}" \
    commit -q -m "Initial: entity profile prototype (Jane Doe + Business Checking 4471)"

git remote add origin https://github.com/guiteod-sardine/entities.git 2>/dev/null || true
git push -u origin main --force

echo ""
echo "✓ Pushed to https://github.com/guiteod-sardine/entities"
echo ""
echo "Next: enable GitHub Pages"
echo "  1. Go to https://github.com/guiteod-sardine/entities/settings/pages"
echo "  2. Source: Deploy from a branch → main → / (root) → Save"
echo "  3. Live URL ready in ~30s: https://guiteod-sardine.github.io/entities/"
