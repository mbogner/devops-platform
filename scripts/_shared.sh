#!/usr/bin/env bash
export PROJECT="devops"
export DOCKER_DIR="../"
export DOCKER_COMPOSE_FILES="
-f ${DOCKER_DIR}docker-compose-gitlab-runner.yml
-f ${DOCKER_DIR}docker-compose-gitlab-server.yml
-f ${DOCKER_DIR}docker-compose-localmail.yml
-f ${DOCKER_DIR}docker-compose-nexus.yml
-f ${DOCKER_DIR}docker-compose-nginx.yml
-f ${DOCKER_DIR}docker-compose-postgres.yml
-f ${DOCKER_DIR}docker-compose-sonar.yml
-f ${DOCKER_DIR}docker-compose-valkey.yml
"
