#!/bin/bash
ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
composer create-project --prefer-dist laravel/laravel my-laravel-app
cd my-laravel-app
composer require pestphp/pest --dev
composer require friendsofphp/php-cs-fixer
./vendor/bin/pest --init
cp "$ROOT_DIR/.gitignore" "$ROOT_DIR/.editorconfig" .