# Utilizar la imagen oficial de Python 3
FROM python:3

# Seleccionar el directorio donde trabajaremos
# Copiar el codigo fuente al directorio de trabajo
COPY ./src/ /usr/src/books
WORKDIR /usr/src/books

# Instalar flask y sus dependencias.
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Abrir el puerto 80 del contendor
EXPOSE 5000

# Injectar variable de configuracion para flask
ENV FLASK_APP=microservice.py

# Iniciar el servicio
CMD [ "flask", "run", "--host=0.0.0.0" ]
