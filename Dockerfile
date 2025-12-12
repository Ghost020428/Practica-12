# 1. Usar una imagen base ligera de Python
FROM python:3.9-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos de requisitos e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copiar el resto del código de la aplicación
COPY . .

# 5. Exponer el puerto donde corre Flask
EXPOSE 5000

# 6. Comando para ejecutar la aplicación al iniciar el contenedor
CMD ["python", "app.py"]