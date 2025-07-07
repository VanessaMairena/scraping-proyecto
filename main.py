from db.connection import get_connection
from llm.llm_selector import analizar_productos

def obtener_productos():
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT titulo, precio, origen FROM productos")
    productos = cur.fetchall()
    conn.close()
    return productos

if __name__ == "__main__":
    productos = obtener_productos()
    resultado = analizar_productos(productos)
    print("📊 Análisis LLM:")
    print(resultado)
