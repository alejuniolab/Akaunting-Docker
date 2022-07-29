#!/bin/bash

apt update && apt install -y git

# INSTALACAO DO DOCKER
curl -fsSL https://get.docker.com | sh
systemctl enable docker

# INSTALACAO COMPOSE
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

clear
docker compose version
