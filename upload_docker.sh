#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>

dockerpath=jasmeen92/project/demolocal

# Step 2:  
# Authenticate & tag
echo "e5dca948463c and demolocal: $dockerpath"

# Step 3:
# Push image to a docker repository

docker push jasmeen92/project:demolocal
