#!/bin/bash

# Limpiar cache de Docker
docker system prune -f

# Construir la imagen
docker build -t proyecto-backend-node .

# Ejecutar el contenedor
docker run -d -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 --name backend-microservices proyecto-backend-node

# Ver logs de PM2
docker logs backend-microservices

# Ver estado de los procesos PM2
docker exec backend-microservices pm2 status
