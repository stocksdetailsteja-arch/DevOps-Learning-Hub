# Observability Commands

## Start Stack

docker compose up -d

## View Containers

docker ps

## View Prometheus

http://localhost:9090

## View Grafana

http://localhost:3000

## View Alertmanager

http://localhost:9093

## Verify Targets

curl http://localhost:9090/api/v1/targets

## Verify Exporter

curl http://localhost:9100/metrics

## View Logs

docker logs prometheus

docker logs grafana

docker logs alertmanager

docker logs node-exporter

## Check Containers

docker stats

## Stop Stack

docker compose down
