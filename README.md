# scanner-backend (Railway deploy)

Read-only dashboard API for scanner SQLite alerts.

## Endpoints

- `GET /`            — static dashboard (index.html)
- `GET /health`      — health check
- `GET /api/alerts`  — JSON list of alerts (paginated, filterable)

## Deploy

See `INSTRUKSI_RAILWAY.md` in parent.

## Env

- `PORT` (default 8080)
- `HOST` (default 0.0.0.0)
- `SQLITE_PATH` (default `/app/data/alerts.db`)
