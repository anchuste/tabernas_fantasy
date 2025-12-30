FROM node:18-alpine

WORKDIR /app

# Copiar package files
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar TODO el proyecto (incluyendo public/)
COPY . .

# Verificar que public existe (debug)
RUN ls -la /app/public/fantasy_icons/ || echo "ERROR: fantasy_icons no encontrado"

EXPOSE 4321

# Importante: --host 0.0.0.0 para que sea accesible desde fuera del contenedor
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]