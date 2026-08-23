# Monitoring Commands Cheat Sheet

## Linux Monitoring

top

htop

free -h

df -h

uptime

vmstat

iostat

## Processes

ps -ef

pidstat

## Logs

tail -f /var/log/messages

journalctl -xe

journalctl -u nginx -f

## Network

ss -tunlp

netstat -tunlp

## Prometheus

curl http://localhost:9090/metrics

## Common PromQL

up

node_cpu_seconds_total

node_memory_MemAvailable_bytes

node_filesystem_avail_bytes

rate(http_requests_total[5m])

sum(rate(container_cpu_usage_seconds_total[5m]))

## Grafana

systemctl status grafana-server

## Prometheus Service

systemctl status prometheus

## Node Exporter

systemctl status node_exporter

## Kubernetes Monitoring

kubectl top nodes

kubectl top pods

kubectl get events

## CloudWatch

aws cloudwatch list-metrics

aws cloudwatch describe-alarms

## CloudTrail

aws cloudtrail describe-trails

## Logs

aws logs describe-log-groups

aws logs describe-log-streams
