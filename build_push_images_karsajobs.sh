#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama image karsajobs dan tag latest
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag karsajobs:latest afrizalsebastian16/karsajobs:latest

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u afrizalsebastian16 --password-stdin

# Mengunggah image ke Docker Hub
docker push afrizalsebastian16/karsajobs:latest
