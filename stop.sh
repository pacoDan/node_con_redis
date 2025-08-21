#!/bin/bash

# Parar el contenedor
docker stop backend-microservices

# Eliminar el contenedor
docker rm backend-microservices

# Eliminar la imagen construida
docker rmi proyecto-backend-node

# Limpiar cache de Docker
docker system prune -f
