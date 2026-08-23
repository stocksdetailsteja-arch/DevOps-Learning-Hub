# Monitoring And Incident Commands

## CPU Monitoring

top

htop

## Memory Monitoring

free -h

vmstat

## Disk Monitoring

df -h

du -sh *

## Process Investigation

ps -ef

pidstat

## Logs

tail -f /var/log/messages

journalctl -xe

journalctl -u nginx -f

## Docker Logs

docker logs container_id

## Kubernetes Logs

kubectl logs pod-name

kubectl describe pod pod-name

kubectl get events

## Kubernetes Metrics

kubectl top pods

kubectl top nodes

## Prometheus

curl localhost:9090/metrics

## Common PromQL

up

rate(http_requests_total[5m])

node_memory_MemAvailable_bytes

node_cpu_seconds_total

## CloudWatch

aws cloudwatch describe-alarms

aws cloudwatch list-metrics

## CloudTrail

aws cloudtrail describe-trails

## Validation Commands

kubectl get pods

systemctl status service-name

docker ps

terraform
