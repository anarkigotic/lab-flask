FROM python:3.12-slim

# Trabajar en un directorio específico (opcional)
WORKDIR /app

# Copiar el resto del código fuente
COPY . .

# Instalar dependencias
RUN pip install -r requirements.txt



# Ejecutar el comando
CMD ["python", "app.py"]
