# 💻 Proyecto de Scraping Dinámico y Estático con PostgreSQL + Azure OpenAI

<!-- local-development:start -->
## Desarrollo local

Consulta [RUNNING.md](RUNNING.md) para ubicar cada componente, abrirlo en su IDE, compilarlo y conocer las comprobaciones realizadas y los requisitos pendientes.
<!-- local-development:end -->

**Autores:** Vanessa Mairena Solano, Justin Rodriguez Gonzalez, Brandon Campos Mendez 
**Carrera:** Ingeniería en Tecnologías de la Información   
**Proyecto Final: Web Scraping Inteligente con LLM + Dashboard + API REST**

---

## 🛠 Descripción General

Este proyecto realiza scraping de sitios web **dinámicos** (JavaScript) y **estáticos** (HTML), almacena los datos en **PostgreSQL**, genera archivos JSON para el **frontend** y utiliza **Azure OpenAI (LLM)** para generar y analizar selectores CSS/XPath automáticamente. Además, incluye un **scheduler cada 30 minutos**, logs estructurados en JSON, y una API REST en Flask para exponer los datos.

---

## 📦 Estructura del Proyecto

```
├── api/
│   └── json_api_server.py
├── data/
│   ├── events.json
│   ├── files.json
│   └── results.json
├── docs/
│   └── GUÍA_INICIO.md
├── downloads/
├── frontend/
│   ├── index.html
│   ├── styles.css
│   ├── main.js
│   ├── files.js
│   ├── results.js
│   └── calendar.js
├── llm/
│   └── llm_selector.py
├── logs/
│   └── scraper.log
├── scraper/
│   ├── scraper_dynamic.py
│   ├── scraper_static.py
│   └── driver/chromedriver.exe
├── scheduler.py
├── main.py
├── requirements.txt
├── .env
└── README.md
```

---

## ⚙️ Requisitos

- Python 3.9+
- PostgreSQL 12+
- Cuenta de Azure OpenAI con modelo `gpt-4o-mini`
- Navegador Chrome + `chromedriver`

---

## 🧪 Instalación y Configuración Rápida

1. Clona el repositorio:
```bash
git clone https://github.com/VanessaMairena/scraping-proyecto.git
cd scraping-proyecto
```

2. Crea y activa entorno virtual:
```bash
python -m venv venv
venv\Scripts\activate  # Windows
```

3. Instala las dependencias:
```bash
pip install -r requirements.txt
```

4. Crea el archivo `.env` con tus variables:

```env
OPENAI_API_KEY=tu_clave_azure
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

## 🚀 Uso

| Acción | Comando |
|--------|---------|
| Scraping Estático | `python scraper/scraper_static.py` |
| Scraping Dinámico | `python scraper/scraper_dynamic.py` |
| Scheduler (cada 30 min) | `python scheduler.py` |
| API REST Flask | `python api/json_api_server.py` |
| Dashboard Web | Abre `frontend/index.html` |
| Generar Selectores con LLM | `python llm/llm_selector.py` |

---

## 🧠 Inteligencia Artificial

Se utiliza Azure OpenAI con modelo `gpt-4o-mini` para:
- Generar selectores CSS/XPath dinámicamente
- Analizar productos scrapeados
- Ejecutar pruebas interactivas en consola

---

## 🧩 Automatización

Se utiliza APScheduler para ejecutar el scraping automáticamente cada 30 minutos, registrando logs y manteniendo actualizado el dashboard y los archivos JSON.

---

## 📊 Logs y Observabilidad

Los logs se guardan en `logs/scraper.log` en formato JSON estructurado con nivel `INFO`, `WARNING`, `ERROR`.

---

## 🗂 Descargas y Hashes

Los archivos se descargan desde un sitio estático o JSON (ej: `files.json`) y se verifica su integridad con SHA-256. Si un archivo cambia, se reemplaza; si se elimina del origen, se elimina localmente también.

---

## 📁 Base de Datos

Se utiliza PostgreSQL con dos tablas principales:

- `productos`: contiene los productos scrapeados
- `downloaded_files`: contiene los archivos descargados con hash y fecha

---

## ✅ Créditos

Este proyecto fue desarrollado por **Vanessa Mairena Solano** como parte del curso de Computación en la Nube en la **Universidad Técnica Nacional**, Grupo 1.

---

## 📸 Video de Evidencia

El video de funcionamiento del sistema se encuentra disponible y adjunto como parte del entregable en Campus Virtual.

---

## 📤 Subido a GitHub

Repositorio disponible en: [https://github.com/VanessaMairena/scraping-proyecto](https://github.com/VanessaMairena/scraping-proyecto)
