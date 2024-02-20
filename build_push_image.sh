#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama image order-service dan tag latest
docker build -t order-service:latest .

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag order-service:latest ghcr.io/afrizalsebastian/order-service:latest

# Login ke Docker Hub via Terminal
echo $GITHUB_TOKEN| docker login -u afrizalsebastian --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/afrizalsebastian/order-service:latest
