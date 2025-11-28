from flask import Flask
import psycopg2
import os

app = Flask(__name__)

def get_db_connection():
    """
    Returns a connection to PostgreSQL.

    The values are read from medium variables:
    DB_HOST, DB_PORT, DB_NAME, DB_USER, DB_PASSWORD
    Defaults values for lab.
    """
    host = os.getenv("DB_HOST", "host.docker.internal")
    port = int(os.getenv("DB_PORT", "5433"))
    dbname = os.getenv("DB_NAME", "mydb")
    user = os.getenv("DB_USER", "appuser")
    password = os.getenv("DB_PASSWORD", "secret")

    conn = psycopg2.connect(
        host=host,
        port=port,
        database=dbname,
        user=user,
        password=password
    )
    return conn

@app.route("/")
def index():
    return "Flask app is running! Visit /db to test PostgreSQL connection."

@app.route("/db")
def db_check():
    try:
        conn = get_db_connection()
        cur = conn.cursor()
        cur.execute("SELECT NOW();")
        result = cur.fetchone()
        cur.close()
        conn.close()
        return f"Flask + PostgreSQL — success! Time: {result[0]}"
    except Exception as e:
        return f"Database connection failed: {e}"

if __name__ == "__main__":
    # Important: 0.0.0.0 pentru a fi accesibil din container
    app.run(host="0.0.0.0", port=5000)

