#!/bin/sh

# Include `-T` flag before webserver for cronjob's

docker compose exec webserver document_exporter ../export