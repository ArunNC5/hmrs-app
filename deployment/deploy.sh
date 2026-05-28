#!/bin/bash

set -e

AWS_REGION=us-east-1
CLUSTER_NAME=hmrs-dev-cluster
SERVICE_NAME=hmrs-dev-service

echo "Triggering ECS deployment"

aws ecs update-service \
  --cluster $CLUSTER_NAME \
  --service $SERVICE_NAME \
  --force-new-deployment \
  --region $AWS_REGION

echo "Deployment completed"
