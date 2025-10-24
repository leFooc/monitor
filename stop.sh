docker compose -f grafana/compose.yml down -v 
docker compose -f prometheus/compose.yml down -v

docker compose -f postgres-exporter/compose.yml down -v
docker compose -f node-exporter/compose.yml down -v
docker compose -f cadvisor/compose.yml down -v
