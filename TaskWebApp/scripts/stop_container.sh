#!/bin/bash
echo "Stopping any existing container..."
docker stop task-app-container || true
docker rm task-app-container || true
