#!/bin/bash
ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
npm init -y
npm install eslint prettier --save-dev
npx eslint --init
cp "$ROOT_DIR/.gitignore" "$ROOT_DIR/.editorconfig" .