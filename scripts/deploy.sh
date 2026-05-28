#!/bin/bash

aws ecs update-service \
  --cluster hmrs-cluster \
  --service hmrs-service \
  --force-new-deployment
