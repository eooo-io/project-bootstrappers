#!/bin/bash
ROOT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
mkdir infra
cd infra
touch Dockerfile docker-compose.yml
mkdir k8s helm ansible
touch k8s/deployment.yaml helm/Chart.yaml ansible/playbook.yml
cp "$ROOT_DIR/.gitignore" "$ROOT_DIR/.editorconfig" .