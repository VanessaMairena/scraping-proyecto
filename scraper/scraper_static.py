
import requests
from bs4 import BeautifulSoup
import json
import os
import psycopg2
from dotenv import load_dotenv
from datetime import datetime
import logging

# Cargar variables de entorno
load_dotenv()

# Configurar logging
log_dir = "logs"
os.makedirs(log_dir, exist_ok=True)
log_file = os.path.join(log_dir, "scraper.log")

logging.basicConfig(
    filename=log_file,
    level=logging.INFO,
    format="%(asctime)s [STATIC] %(levelname)s: %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S"
)

def scrape_static():
    try:
        url = "https://books.toscrape.com/"
        response = requests.get(url)
        response.encoding = "utf-8"
        soup = BeautifulSoup(response.text, "html.parser")

        books = []
        for item in soup.select(".product_pod"):
            title = item.h3.a["title"]
            price = item.select_one(".price_color").text
            books.append({
                "title": title,
                "price": price
            })

        # Guardar JSON
        os.makedirs("data", exist_ok=True)
        with open("data/results.json", "w", encoding="utf-8") as f:
            json.dump(books, f, indent=2, ensure_ascii=False)

        logging.info(f"Se guardaron {len(books)} libros en data/results.json")
        print(f"✅ Se guardaron {len(books)} libros en data/results.json")
        return books
    except Exception as e:
        logging.error("Error en scrape_static: %s", e)
        print("❌ Error durante scraping estático:", e)
        return []

def save_to_db(data):
    try:
        conn = psycopg2.connect(
            host=os.getenv("DB_HOST"),
            port=os.getenv("DB_PORT"),
            dbname=os.getenv("DB_NAME"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD")
        )
        cur = conn.cursor()
        for item in data:
            cur.execute(
                "INSERT INTO productos (titulo, precio, origen, fecha) VALUES (%s, %s, %s, %s)",
                (item["title"], item["price"], "scraper_static", datetime.now())
            )
        conn.commit()
        cur.close()
        conn.close()
        logging.info("Datos guardados en PostgreSQL con éxito.")
        print("✅ Datos guardados en PostgreSQL con éxito.")
    except Exception as e:
        logging.error("Error al guardar en la base de datos: %s", e)
        print("❌ Error al guardar en la base de datos:", e)

# Bloque principal
if __name__ == "__main__":
    libros = scrape_static()
    if libros:
        save_to_db(libros)
