# Usar Node.js 12.12.0 (imagen completa, no alpine)
FROM node:12.12.0

# Instalar PM2 globalmente
RUN npm install -g pm2

# Crear directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar todo el código fuente
COPY . .

# Exponer los puertos que necesiten los microservicios
EXPOSE 3000 3001 3002 3003

# Comando para iniciar todos los microservicios con PM2
CMD ["pm2-runtime", "start", "ecosystem.config.js"]
