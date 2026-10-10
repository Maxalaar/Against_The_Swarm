#!/usr/bin/env python3
"""Exports every card as an image, plus cards.json, for the test table.

Reads cards/*.toml, renders the cards with Typst and writes table/cards/.
Run from anywhere: python3 scripts/export_table_cards.py
"""
import json
import re
import subprocess
import tempfile
import tomllib
from pathlib import Path

from PIL import Image

ROOT = Path(__file__).resolve().parent.parent
OUTPUT = ROOT / "table" / "cards"
SETS = {"swarm": "swarm.toml", "asset": "assets.toml", "ace": "aces.toml"}
PIXELS_PER_INCH = "170"


def plain_text(value):
    """Turns Typst markup into plain text, for search and screen readers."""
    if isinstance(value, list):
        return [plain_text(item) for item in value]
    if not isinstance(value, str):
        return value
    return re.sub(r"\s+", " ", value.replace("~", " ").replace("*", "").replace("\\", "")).strip()


def main():
    cards = {}
    for set_name, file_name in SETS.items():
        data = tomllib.loads((ROOT / "cards" / file_name).read_text(encoding="utf-8"))
        identifiers = sorted(data)
        target = OUTPUT / set_name
        target.mkdir(parents=True, exist_ok=True)
        for stale in target.glob("*.webp"):
            stale.unlink()
        with tempfile.TemporaryDirectory() as temporary:
            subprocess.run(
                ["typst", "compile", "--root", str(ROOT), "--ppi", PIXELS_PER_INCH,
                 "--input", f"set={set_name}", str(ROOT / "print" / "card_pages.typ"),
                 f"{temporary}/{{0p}}.png"],
                check=True,
            )
            pages = sorted(Path(temporary).glob("*.png"))
            if len(pages) != len(identifiers):
                raise SystemExit(f"{set_name}: {len(pages)} pages for {len(identifiers)} cards")
            for identifier, page in zip(identifiers, pages):
                Image.open(page).convert("RGB").save(target / f"{identifier}.webp", quality=72, method=6)
        for identifier in identifiers:
            card = {key: plain_text(value) for key, value in data[identifier].items()}
            card["set"] = set_name
            card["image"] = f"cards/{set_name}/{identifier}.webp"
            cards[f"{set_name}/{identifier}"] = card
    (OUTPUT.parent / "cards.json").write_text(
        json.dumps(cards, ensure_ascii=False, indent=1), encoding="utf-8")
    print(f"{len(cards)} cards exported to {OUTPUT}")


if __name__ == "__main__":
    main()
