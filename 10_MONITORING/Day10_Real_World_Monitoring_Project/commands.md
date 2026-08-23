# Day 10 - Real World Monitoring Project Commands

## Verify Prometheus

curl localhost:9090

## Verify Node Exporter

curl localhost:9100/metrics

## Verify Grafana

systemctl status grafana-server

## Verify AlertManager

systemctl status alertmanager

## Verify Elasticsearch

curl localhost:9200

## Verify Kibana

systemctl status kibana

## Verify Logstash

systemctl status logstash

## Verify CloudWatch Metrics

aws cloudwatch list-metrics

## Verify Active Alerts

curl localhost:9093/api/v2/alerts

## Verify Targets

curl http://localhost:9090/api/v1/targets

## View Indices

curl localhost:9200/_cat/indices

## Check Server Health

top

free -h

df -h

uptime

## Check Network Statistics

ss -tulpn

## View Application Logs

journalctl -u application.service

## Check CloudWatch Alarms

aws cloudwatch describe-alarms
