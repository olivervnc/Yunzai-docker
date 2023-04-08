#!/bin/bash

mkdir -p ./app/config ./app/plugins ./app/logs ./app/data ./app/database ./app/home

DOCKER_USER="$(id -u):$(id -g)" docker compose up -d