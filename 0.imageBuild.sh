#!/bin/bash
echo "Dockerイメージビルド"
docker image rm selenium
docker build -t selenium .
read -p "Press [Enter] key to continue..."
