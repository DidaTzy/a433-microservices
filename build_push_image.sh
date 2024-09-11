#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 hanyadida/item-app:v1
echo $PASSWORD | docker login -u hanyadida --password-stdin
docker push hanyadida/item-app:v1