#!/bin/sh
# Render a single card to an image.
# Usage: ./render_card.sh card_content/swarm/bombard.typ [output.png]
set -e
card="$1"
if [ -z "$card" ]; then
  echo "usage: $0 path/to/card.typ [output.png]" >&2
  exit 1
fi
name=$(basename "$card" .typ)
out="${2:-build/$name.png}"
mkdir -p "$(dirname "$out")"
typst compile single_card.typ "$out" --ppi 300 --input card="$card"
echo "$out"
