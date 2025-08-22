#!/usr/bin/env bash
set -euo pipefail

if [ "${1-}" = "" ]; then
  echo "Usage: $0 <git-remote-url>"
  echo "Example: $0 https://github.com/USERNAME/REPO.git"
  exit 1
fi

REMOTE_URL="$1"

# Initialize git repo if not already
if [ ! -d .git ]; then
  git init
fi

git add .
git commit -m "Initial commit" || true
git branch -M main
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE_URL"
git push -u origin main
