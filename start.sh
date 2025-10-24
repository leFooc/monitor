docker network create --driver=bridge --subnet=172.1.0.0/24 --gateway=172.1.0.1 monitor-net

docker compose -f node-exporter/compose.yml up -d 
docker compose -f cadvisor/compose.yml up -d 
docker compose -f postgres-exporter/compose.yml up -d 

docker compose -f prometheus/compose.yml up -d
docker compose -f grafana/compose.yml up -d
