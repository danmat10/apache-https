FROM python:3.9
WORKDIR /MapsFlask
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY flask_server flask_server
EXPOSE 5000