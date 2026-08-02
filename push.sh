#!/bin/bash
# 把新圖推上圖床，並印出可直接用的公開網址
set -e
cd "$(dirname "$0")"
git add -A
if git diff --cached --quiet; then echo "沒有新檔案"; exit 0; fi
git commit -m "add media $(date +%Y-%m-%d)"
git push
echo ""
echo "=== 公開網址 ==="
git diff-tree --no-commit-id --name-only -r HEAD | grep -E '\.(jpg|jpeg|png|gif|webp)$' | while read f; do
  echo "https://raw.githubusercontent.com/huangchingfeng/autolab-media/main/$f"
done
