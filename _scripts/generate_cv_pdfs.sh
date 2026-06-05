#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CV_DIR="$ROOT/assets/cv"

find_chrome() {
  if [[ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]]; then
    echo "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
  elif command -v google-chrome-stable >/dev/null 2>&1; then
    echo "google-chrome-stable"
  elif command -v chromium-browser >/dev/null 2>&1; then
    echo "chromium-browser"
  elif command -v chromium >/dev/null 2>&1; then
    echo "chromium"
  else
    echo "Chrome or Chromium is required to generate CV PDFs." >&2
    exit 1
  fi
}

CHROME="$(find_chrome)"

for lang in en de; do
  html="$CV_DIR/cv_${lang}.html"
  pdf="$CV_DIR/cv_${lang}.pdf"
  "$CHROME" --headless --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$pdf" "file://${html}"
  echo "Generated ${pdf}"
done
