#!/bin/bash

set -e

CLUSTER_NAME=hmrs-dev-cluster
SERVICE_NAME=hmrs-dev-service

LAST_TASK_DEF=$(aws ecs describe-services \
  --cluster $CLUSTER_NAME \
  --services $SERVICE_NAME \
  --query 'services[0].taskDefinition' \
  --output text)

aws ecs update-service \
  --cluster $CLUSTER_NAME \
  --service $SERVICE_NAME \
  --task-definition $LAST_TASK_DEF
