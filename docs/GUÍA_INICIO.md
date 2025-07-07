# 📝 GUÍA DE INICIO DEL PROYECTO

**Nombre del Proyecto:** Scraping Web Dinámico y Estático con PostgreSQL + Azure OpenAI  
**Autora:** Vanessa Mairena Solano  
**Fecha:** Julio 2025  

---

## ✅ REQUISITOS PREVIOS

- Python 3.9 o superior instalado
- PostgreSQL (local o remoto)
- Navegador Chrome
- Archivo `chromedriver.exe` ubicado en `scraper/driver/`
- Cuenta de Azure OpenAI activa (API Key)

---

## 📁 ESTRUCTURA DEL PROYECTO

```
├── scraper/                # Contiene los scrapers estático y dinámico
├── data/                   # Resultados en formato JSON
├── frontend/               # Archivos HTML, JS y CSS del dashboard
├── api/                    # API Flask para exponer datos
├── llm/                    # Scripts para análisis con inteligencia artificial
├── logs/                   # Logs estructurados
├── downloads/              # Archivos descargados
├── docs/                   # Documentación como esta guía
```

---

## ⚙️ PASOS DE INSTALACIÓN

### 1. Crear entorno virtual (opcional pero recomendado)

```bash
python -m venv venv
.env\Scriptsctivate
```

### 2. Instalar las dependencias

```bash
pip install -r requirements.txt
```

### 3. Configurar variables de entorno

Crear un archivo `.env` con el siguiente contenido:

```
OPENAI_API_KEY=TU_API_KEY
OPENAI_ENDPOINT=https://voiceflip-openai.openai.azure.com/
MODEL_NAME=gpt-4o-mini
API_VERSION=2025-01-01-preview

DB_HOST=localhost
DB_PORT=5432
DB_NAME=scrapingdb
DB_USER=postgres
DB_PASSWORD=TU_PASSWORD
```

---

## 🚀 USO DEL PROYECTO

### Ejecutar scraper estático
```bash
python scraper/scraper_static.py
```

### Ejecutar scraper dinámico
```bash
python scraper/scraper_dynamic.py
```

### Ejecutar API Flask
```bash
python api/json_api_server.py
```

### Ejecutar dashboard web
Abrir el archivo `frontend/index.html` en el navegador.

### Ejecutar scheduler cada 30 minutos
```bash
python scheduler.py
```

### Ejecutar análisis con LLM
```bash
python llm/llm_selector.py
```

---

## 💾 RESPALDO DE BASE DE DATOS

Exportar la base de datos desde pgAdmin o CLI:

- Archivo `.sql` o `.backup` para incluirlo en la entrega.
- Guardar dentro de `docs/` con nombre: `respaldo.sql`

---

## 📞 SOPORTE

Para cualquier duda, contactar a:  
**Vanessa Mairena Solano** – Grupo 1 – Universidad Técnica Nacional

---

¡Gracias por revisar este proyecto!