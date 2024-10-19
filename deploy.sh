#!/bin/bash

# Pull the latest image from Docker Hub
docker pull subburaman76/devops-app:dev

# Stop and remove any existing containers
docker stop devops-app || true
docker rm devops-app || true

# Run a new container with the latest image
docker run -d --name devops-app -p 80:80 subburaman76/devops-app:dev

echo "Application deployed successfully on port 80."

