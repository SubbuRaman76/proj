#!/bin/bash

# Pull the latest image from Docker Hub
docker pull subburaman76/devops-app-prod:latest

# Stop and remove any existing containers
docker stop devops-app-prod || true
docker rm devops-app-prod || true

# Run a new container with the latest image
docker run -d --name devops-app-prod -p 80:80 subburaman76/devops-app-prod:latest

echo "Application deployed successfully on port 80."

