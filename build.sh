#!/bin/bash

# Build the Docker image
docker build -t your-dockerhub-username/devops-app:latest .

# Tag the image
docker tag your-dockerhub-username/devops-app:latest your-dockerhub-username/devops-app:dev

# Push to Docker Hub (dev repo)
docker push your-dockerhub-username/devops-app:dev

echo "Docker image pushed to dev repository on Docker Hub."

