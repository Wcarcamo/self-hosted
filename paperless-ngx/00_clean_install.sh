#!/bin/sh

cd /docker/services/paperless-ngx
sudo rm -rf ./*

mkdir data media postgres redis

cd ~/self-hosted/paperless-ngx
docker compose pull
docker compose run --rm webserver createsuperuser