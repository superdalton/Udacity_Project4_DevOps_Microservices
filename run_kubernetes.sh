#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="superdalton/udacity4"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward udacity4 --address 0.0.0.0 8000:80
