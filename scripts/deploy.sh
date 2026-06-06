#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 551363098218.dkr.ecr.us-east-1.amazonaws.com
docker stop hiqode-container || true
docker rm hiqode-container || true
docker pull 551363098218.dkr.ecr.us-east-1.amazonaws.com/hiqode-web-app:latest
docker run -d --name hiqode-container -p 80:3000 551363098218.dkr.ecr.us-east-1.amazonaws.com/hiqode-web-app:latest
