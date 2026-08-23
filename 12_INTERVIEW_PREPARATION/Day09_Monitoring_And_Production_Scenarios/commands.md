# Monitoring Commands

## Linux Health

top

htop

free -h

df -h

iostat

vmstat

## Logs

tail -f /var/log/syslog

journalctl -xe

## Network

ss -tunlp

netstat -tunlp

## Prometheus

curl http://localhost:9090/metrics

## PromQL Examples

up

node_cpu_seconds_total

node_memory_MemAvailable_bytes

node_filesystem_avail_bytes

rate(http_requests_total[5m])

## Grafana Service

systemctl status grafana-server

## Prometheus Service

systemctl status prometheus

## Node Exporter

systemctl status node_exporter

## Kubernetes Monitoring

kubectl top nodes

kubectl top pods

kubectl get events

## CloudWatch Metrics

aws cloudwatch list-metrics

aws cloudwatch describe-alarms

## CloudWatch Logs

aws logs describe-log-groups

aws logs describe-log-streams
