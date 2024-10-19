#!/bin/bash

# Check for environment argument (dev or prod)
if [ "$1" == "prod" ]; then
    IMAGE_TAG="prod"
    REPO="subburaman76/devops-app:prod"
else
    IMAGE_TAG="dev"
    REPO="subburaman76/devops-app:dev"
fi

# Build the Docker image
docker build -t subburaman76/devops-app:latest .

# Tag the image
docker tag subburaman76/devops-app:latest $REPO

# Push the image to Docker Hub
docker push $REPO

echo "Docker image pushed to $IMAGE_TAG repository on Docker Hub."

