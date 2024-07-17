FROM node:8

# Crear y definir el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json antes de instalar las dependencias
COPY package*.json ./

# Instalamos dependencias
RUN npm install

# Copiamos el resto de la aplicación
COPY . .

# Exponemos el puerto
EXPOSE 8080

# Iniciamos la aplicación
CMD ["node", "server.js"]
