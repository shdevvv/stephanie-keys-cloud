# Runbook: Troubleshooting & Incident Response

## 1. Backend Service Down
* **Symptom:** Prometheus melepaskan alert `BackendServiceDown` atau ALB mengembalikan status code `502 Bad Gateway`.
* **Langkah Penanganan:**
  1. Cek log container backend:
     ```bash
     docker logs stephanie_keys_backend --tail 100 -f
     ```
  2. Verifikasi status koneksi ke PostgreSQL database:
     ```bash
     docker exec -it stephanie_keys_postgres pg_isready -U postgres -d stephanie_keys_db
     ```
  3. Restart service backend jika mengalami deadlock/OOM:
     ```bash
     docker compose restart backend
     ```

## 2. High Memory / CPU Usage
* **Symptom:** Prometheus melepaskan alert `HighMemoryUsage` (>85%).
* **Langkah Penanganan:**
  1. Identifikasi container yang mengonsumsi resource tinggi:
     ```bash
     docker stats
     ```
  2. Batasi atau tingkatkan resource limit pada `docker-compose.yml` atau konfigurasikan Auto-Scaling pada AWS ECS/EC2.