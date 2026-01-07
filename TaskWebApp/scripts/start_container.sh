#!/bin/bash
# 1. Login to ECR (Make sure your EC2 IAM role has ECR permissions)
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 123456789012.dkr.ecr.us-east-1.amazonaws.com

# 2. Pull the latest image
docker pull 123456789012.dkr.ecr.us-east-1.amazonaws.com/task-web-app:latest

# 3. Run the container
docker run -d --name task-app-container -p 8080:8080 123456789012.dkr.ecr.us-east-1.amazonaws.com/task-web-app:latest
