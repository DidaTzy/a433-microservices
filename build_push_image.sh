#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 ghcr.io/didatzy/item-app:v1
echo $git | docker login ghcr.io -u didatzy --password-stdin
docker push ghcr.io/didatzy/item-app:v1