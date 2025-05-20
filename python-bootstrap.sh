#!/bin/bash
ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
python -m venv .venv
source .venv/bin/activate
pip install black flake8 mypy pytest
touch main.py
cp "$ROOT_DIR/.gitignore" "$ROOT_DIR/.editorconfig" .