#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jasmeen92/project


# Step 2
# Run the Docker Hub container with kubernetes

#kubectl create deployment demolocal --image=app.py
#docker stack deploy --compose-file docker-compose.yml

docker stack deploy --namespace app --compose-file docker-compose.yml demolocal

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/demolocal 8000:80

#kubectl -n default port-forward  8000:80
