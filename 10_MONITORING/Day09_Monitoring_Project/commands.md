# Day 09 - Monitoring Project Commands

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

## Check CloudWatch Metrics

aws cloudwatch list-metrics

## Check Active Alerts

curl localhost:9093/api/v2/alerts

## Check Prometheus Targets

http://SERVER-IP:9090/targets

## View Elasticsearch Indices

curl localhost:9200/_cat/indices

## Check Server Health

top

free -h

df -h

uptime
