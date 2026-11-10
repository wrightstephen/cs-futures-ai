#!/bin/bash
# Rebuild the talk listings and publish the site to GitHub Pages.
# Usage: ./publish.sh "short description of the change"
set -e
cd "$(dirname "$0")"

msg="${1:-Update site}"

python3 build.py
git add -A
if git diff --cached --quiet; then
  echo "No changes to publish."
  exit 0
fi
git commit -q -m "$msg"
git push -q
echo "Published. The live site updates within a minute or two:"
echo "  https://wrightstephen.github.io/cs-futures-ai/"
