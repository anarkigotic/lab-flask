# Usar la imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo de la aplicación y el requirements.txt en el contenedor
COPY . .

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto 5000 para que Flask pueda ser accedido desde fuera del contenedor
EXPOSE 5000

# Definir el comando que se ejecutará cuando el contenedor se inicie
CMD ["python", "app.py"]
