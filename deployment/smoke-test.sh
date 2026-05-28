#!/bin/bash

set -e

ALB_URL=$1

echo "Running smoke tests against ${ALB_URL}"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" ${ALB_URL}/actuator/health)

if [ "$STATUS" != "200" ]; then
  echo "Smoke test failed"
  exit 1
fi

echo "Smoke test passed"
