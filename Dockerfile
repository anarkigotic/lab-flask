# Utilizar una imagen de Node.js como base
FROM node:14

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo package.json y package-lock.json para instalar las dependencias
COPY . .

# Instalar las dependencias
RUN npm install


# Exponer el puerto en el que la aplicación Express se ejecutará
EXPOSE 5000

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["node", "main.js"]
# FROM python:3.12-slim

# # Trabajar en un directorio específico (opcional)
# WORKDIR /app

# # Copiar el resto del código fuente
# COPY . .

# # Instalar dependencias
# RUN pip install -r requirements.txt



# # Ejecutar el comando
# CMD ["python", "app.py"]
