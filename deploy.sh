#!/bin/bash
# Выложить свежую Полянку: ./deploy.sh
cd "$(dirname "$0")"
git add -A
git -c commit.gpgsign=false commit -m "обновление полянки" 2>/dev/null
git push origin main
echo "Выложено → https://zachbraff.github.io/polyanka/ (обновится через ~минуту)"
