#!/bin/bash

# Stoppe les conteneurs
docker stop $(docker ps -a -q)
# Supprime les conteneurs
docker rm $(docker ps -a -q)
# Supprime les images
#docker rmi $(docker images -q)
# Force la suppression des images de base
docker rmi -f $(docker images -q)
# Construit l'image
#docker build -t pobsteta/rpi-pgdata .
# Lance le container créé détaché (argument -d)
#docker run --name pgdata -d pobsteta/rpi-pgdata
