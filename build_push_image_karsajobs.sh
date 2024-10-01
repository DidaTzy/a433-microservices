#!/bin/bash

# Build Docker image
docker build -t hanyadida/karsajobs:latest .

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u hanyadida --password-stdin

# Push image to Docker Hub
docker push hanyadida/karsajobs:latest