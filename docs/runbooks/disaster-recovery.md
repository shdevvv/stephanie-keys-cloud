# Runbook: Disaster Recovery & Database Backup / Restore

## 1. Automated Database Backup (PostgreSQL)
Jalankan backup basis data secara berkala menggunakan `pg_dump`:

```bash
docker exec -t stephanie_keys_postgres pg_dump -U postgres -d stephanie_keys_db > backup_$(date +%Y%m%d_%H%M%S).sql