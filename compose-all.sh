#!/bin/bash

if [[ "$1" == "up" ]]; then
  echo "Starting Containers............"
  process="up -d"
elif [[ "$1" == "down" ]]; then
  echo "Stopping Containers............"
  process=$1
else
  echo "Accepting only [up|down] parameters"
  exit 1
fi

docker compose -f caddy/compose.yaml $process

docker compose -f actual/compose.yaml $process
docker compose -f calibre/compose.yaml $process
docker compose -f filebrowser/compose.yaml $process
docker compose -f freshrss/compose.yaml $process
# docker compose -f gitea/compose.yaml $process
# docker compose -f grist/compose.yaml $process
docker compose -f homepage/compose.yaml $process
docker compose -f immich/compose.yaml $process
docker compose -f mealie/compose.yaml $process
docker compose -f myspeed/compose.yaml $process
docker compose -f nginx/compose.yaml $process
docker compose -f paperless-ngx/compose.yaml $process
