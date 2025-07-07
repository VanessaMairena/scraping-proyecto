# 📐 Arquitectura del Proyecto

**Nombre del Proyecto:** Scraping Web Dinámico y Estático con PostgreSQL + Azure OpenAI  
**Autora:** Vanessa Mairena Solano  
**Descripción:** Este documento explica la arquitectura funcional del sistema desarrollado.

---

## 🔄 Flujo General del Sistema

```
+------------------+      +------------------+       +--------------------+      +------------------+
| Scrapers         | ---> | PostgreSQL DB    |  ---> | JSON Files (API)   | ---> | Frontend (UI)    |
| (Dinámico y Est.)|      | productos + logs |       | results / files    |      | Dashboard Web    |
+------------------+      +------------------+       +--------------------+      +------------------+

                          +----------------+
                          | Azure OpenAI   |
                          | Selectores LLM |
                          +----------------+
```

---

## 🔧 Módulos Principales

| Módulo         | Descripción |
|----------------|-------------|
| `scraper/`     | Contiene `scraper_dynamic.py` (Selenium) y `scraper_static.py` (BeautifulSoup). Extraen productos y archivos. |
| `downloads/`   | Carpeta donde se guardan los archivos descargados. |
| `data/`        | Contiene los archivos `results.json`, `files.json`, `events.json` para mostrar en el frontend. |
| `llm/`         | Analiza productos o genera selectores con el modelo GPT-4o desde Azure OpenAI. |
| `logs/`        | Guarda `scraper.log` con logs estructurados en JSON. |
| `api/`         | API REST desarrollada en Flask para consumir desde JavaScript (frontend). |
| `frontend/`    | HTML5, CSS y JS que muestran productos, archivos y eventos con `fetch()` y FullCalendar.js. |
| `scheduler.py` | Programa la ejecución automática cada 30 minutos usando APScheduler. |
| `.env`         | Variables de entorno (PostgreSQL y claves Azure). |
| `docs/`        | Guías, respaldo de la BD y documentación técnica. |

---

## 🧠 Integración con LLM (Azure OpenAI)

- Utiliza el modelo `gpt-4o-mini` para:
  - Generar selectores CSS/XPath a partir de HTML.
  - Analizar productos y generar respuestas inteligentes.
- Implementado vía API REST (`llm/llm_selector.py`).

---

## 📊 Observabilidad y Logs

- Todos los procesos (scraping, errores, cambios) se registran en `logs/scraper.log`.
- Formato: JSON estructurado con campos como:
  - `timestamp`
  - `level`
  - `message`

---

## 🔁 Automatización

- `scheduler.py` ejecuta el scraping dinámico y estático cada 30 minutos.
- Se actualizan automáticamente:
  - Archivos `results.json` y `files.json`
  - Base de datos `scrapingdb`
  - Carpeta de descargas con verificación SHA-256

---

## 🔐 Seguridad

- Las claves de Azure y PostgreSQL están protegidas mediante `.env`.
- No se exponen directamente en los scripts.

---

## ✅ Final

Este diseño modular permite ampliar el sistema fácilmente para nuevos sitios web, nuevos formatos de datos o APIs adicionales.