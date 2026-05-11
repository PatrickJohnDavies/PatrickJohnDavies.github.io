#!/bin/bash
set -e

echo "Building Hugo..."
hugo --minify

echo "Git commit..."
git add .

git commit -m "Update $(date)" || true

echo "Push main..."
git push origin main

echo "Deploy gh-pages..."
git push origin `git subtree split --prefix public main`:gh-pages --force

echo "Deployment complete."
xdg-open https://PatrickJohnDavies.github.io/