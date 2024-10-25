#!/bin/bash

# Build the Docker image
docker build -t subburaman76/devops-app-prod:latest .

# Tag the image
docker tag subburaman76/devops-app-prod:latest subburaman76/devops-app-prod:latest

# Push to Docker Hub (dev repo)
docker push subburaman76/devops-app-prod:latest

echo "Docker image pushed to dev repository on Docker Hub."

