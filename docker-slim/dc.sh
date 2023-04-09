#!/bin/bash

mkdir -p ./app/database ./app/home

# docker compose pull
DOCKER_USER="$(id -u):$(id -g)" docker compose up -d