FROM python:3.12-slim

WORKDIR /app

# Copy application code
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir flask psycopg2-binary

# App listen on port 5000
EXPOSE 5000

# Starting command
CMD ["python", "app.py"]

