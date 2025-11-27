FROM python:3.12-slim

WORKDIR /app

# Copiem codul aplicației
COPY app.py .

# Instalăm dependențele necesare
RUN pip install --no-cache-dir flask psycopg2-binary

# Aplicația ascultă pe portul 5000
EXPOSE 5000

# Comanda de pornire
CMD ["python", "app.py"]

