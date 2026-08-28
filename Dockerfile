FROM python:3.12-slim

WORKDIR /app

# Copy data (SQLite db + WAL files)
COPY data/ /app/data/

# Copy dashboard (server.py + public/)
COPY dashboard/ /app/dashboard/

# Railway sets PORT automatically; default 8080
ENV PORT=8080
ENV HOST=0.0.0.0
ENV SQLITE_PATH=/app/data/alerts.db

EXPOSE 8080

CMD ["python", "dashboard/server.py"]
