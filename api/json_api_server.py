# Archivo de API para exponer datos JSON del scraping

from flask import Flask, jsonify
from flask_cors import CORS
import psycopg2
from dotenv import load_dotenv
import os

# Cargar variables de entorno
load_dotenv()

app = Flask(__name__)
CORS(app)

# Función para obtener los datos de la base de datos
def get_productos():
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"),
        port=os.getenv("DB_PORT"),
        dbname=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD")
    )
    cur = conn.cursor()
    cur.execute("SELECT id, titulo, precio, origen, fecha FROM productos ORDER BY id DESC LIMIT 50")
    rows = cur.fetchall()
    cur.close()
    conn.close()

    # Convertimos a una lista de diccionarios
    data = []
    for row in rows:
        data.append({
            "id": row[0],
            "titulo": row[1],
            "precio": row[2],
            "origen": row[3],
            "fecha": row[4].strftime("%Y-%m-%d %H:%M:%S")
        })
    return data

# Ruta API
@app.route("/api/productos", methods=["GET"])
def api_productos():
    return jsonify(get_productos())

# Iniciar servidor
if __name__ == "__main__":
    app.run(debug=True)
