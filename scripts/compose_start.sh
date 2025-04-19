#!/usr/bin/env bash
source ./_shared.sh

docker compose -p "$PROJECT" $DOCKER_COMPOSE_FILES pull
docker compose -p "$PROJECT" $DOCKER_COMPOSE_FILES up -d
