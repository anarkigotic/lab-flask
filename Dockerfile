# Usa una imagen base de Python
FROM python:3.12.2-slim@sha256:5c73034c2bc151596ee0f1335610735162ee2b148816710706afec4757ad5b1e as base

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requisitos al contenedor
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia el resto de la aplicación al contenedor
COPY . .

# Define el comando por defecto para ejecutar tu aplicación
CMD ["python", "app.py"]