# 📘 GUÍA DE INICIO RÁPIDO – Proyecto de Scraping Inteligente

**Autores:** Vanessa Mairena Solano , Jusin Rodriguez Gonzalez, Brandon Campos mendes 
**Carrera:** Ingeniería en Tecnologías de la Información y Comunicación  
**Universidad:** Universidad Técnica Nacional  
**Modalidad:** Teórico – práctico | Grupo 1  


---

## 📌 Requisitos Previos

Antes de ejecutar el proyecto, asegúrate de tener instalado lo siguiente:

- Python 3.9 o superior  
- PostgreSQL 12 o superior  
- Navegador Google Chrome  
- `chromedriver` compatible con tu versión de Chrome  
- Cuenta de Azure con acceso a Azure OpenAI y modelo `gpt-4o-mini`

---

## 🛠 Instalación del Proyecto

### 1. Clona el repositorio
```bash
git clone https://github.com/VanessaMairena/scraping-proyecto.git
cd scraping-proyecto
```

### 2. Crea y activa el entorno virtual

En **Windows**:
```bash
python -m venv venv
venv\Scripts\activate
```

En **Linux/Mac**:
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Instala las dependencias del proyecto

```bash
pip install -r requirements.txt
```

### 4. Configura el archivo `.env` con tus credenciales

Crea un archivo `.env` en la raíz con lo siguiente:

```env
OPENAI_API_KEY=tu_clave_personal
OPENAI_ENDPOINT=https://voiceflip-openai.openai.azure.com/
MODEL_NAME=gpt-4o-mini
API_VERSION=2025-01-01-preview

DB_HOST=localhost
DB_PORT=5432
DB_NAME=scrapingdb
DB_USER=postgres
DB_PASSWORD=Mairena12
```

---

## 🚀 Cómo Ejecutar el Proyecto

| Funcionalidad               | Comando                                              |
|----------------------------|------------------------------------------------------|
| Scraping Estático          | `python scraper/scraper_static.py`                  |
| Scraping Dinámico          | `python scraper/scraper_dynamic.py`                 |
| API REST JSON              | `python api/json_api_server.py`                     |
| Dashboard Web              | Abre `frontend/index.html` en el navegador          |
| Ejecutar con Scheduler     | `python scheduler.py`                               |
| Generar selectores con LLM | `python llm/llm_selector.py`                        |

---

## 📂 Estructura Relevante

```
├── scraper/              # Scrapers dinámico y estático
├── llm/                  # Generador de selectores con LLM
├── api/                  # API Flask con salida JSON
├── frontend/             # Interfaz visual en HTML, CSS y JS
├── logs/                 # Logs del sistema en formato JSON
├── data/                 # Archivos JSON exportados
├── downloads/            # Archivos descargados
├── scheduler.py          # Automatizador cada 30 min
├── .env                  # Variables sensibles (no subir a GitHub)
```

---

## 🧠 Notas Importantes

- La API se ejecuta localmente en `http://127.0.0.1:5000/api/productos`
- El `scheduler.py` ejecuta ambos scrapers automáticamente cada 30 minutos
- El archivo `.env` **nunca debe subirse a GitHub**
- Verifica siempre que `chromedriver.exe` sea compatible con tu versión de Chrome
- El dashboard se actualiza con los datos de `data/results.json`

---

## ❓ Soporte

Para dudas técnicas o errores, puedes contactar a Vanessa Mairena o consultar la documentación técnica en el `README.md`.
