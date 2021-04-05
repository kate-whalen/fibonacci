#!/bin/bash -e

if ! docker info >/dev/null 2>&1; then
    echo "Docker does not seem to be running, please run it first and retry"
    exit 1
fi

docker-compose build && docker-compose up -d

echo "Application should now be running on http://localhost:8080"