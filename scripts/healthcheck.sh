#!/bin/sh

wget --spider -q http://localhost:8080/actuator/health

if [ $? -eq 0 ]; then
  echo "Application healthy"
  exit 0
else
  echo "Application unhealthy"
  exit 1
fi
