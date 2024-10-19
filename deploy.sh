#!/bin/bash

# Check for environment argument (dev or prod)
if [ "$1" == "prod" ]; then
    IMAGE_TAG="prod"
    REPO="subburaman76/devops-app:prod"
else
    IMAGE_TAG="dev"
    REPO="subburaman76/devops-app:dev"
fi

# Pull the latest image from Docker Hub
docker pull $REPO

# Stop and remove any existing containers if they exist
docker stop devops-app 2>/dev/null || true
docker rm devops-app 2>/dev/null || true

# Run a new container with the latest image
docker run -d --name devops-app -p 80:80 $REPO

echo "Application deployed in $IMAGE_TAG environment on port 80."

