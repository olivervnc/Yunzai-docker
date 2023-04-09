#!/bin/bash

mkdir -p ./app/database ./app/home

DOCKER_USER="$(id -u):$(id -g)" docker compose up -d