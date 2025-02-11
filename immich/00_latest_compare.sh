#!/bin/sh

# Docker Compose
wget -O latest-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
diff latest-compose.yml compose.yaml

# Environment Variables
wget -O latest.env https://github.com/immich-app/immich/releases/latest/download/example.env
diff latest.env .env

# Hardware Transcoding
# wget -O hwaccel.transcoding.yml https://github.com/immich-app/immich/releases/latest/download/hwaccel.transcoding.yml

# Hardware Acceleration
# wget -O hwaccel.ml.yml https://github.com/immich-app/immich/releases/latest/download/hwaccel.ml.yml