#!/bin/sh

wd=$(pwd)

cd /docker/services/paperless-ngx
sudo rm -rf ./*

mkdir data media postgres redis

cd "$wd"
docker compose pull
docker compose run --rm webserver createsuperuser