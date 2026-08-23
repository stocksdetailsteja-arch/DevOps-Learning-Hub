# Production Troubleshooting Scenarios

## Scenario 1

Website Slow

Check:

- CPU
- Memory
- Disk
- Database
- Recent Deployments

## Scenario 2

CPU Alert Triggered

Investigate:

top

ps -ef

CloudWatch

Prometheus Metrics

## Scenario 3

Memory Leak

Check:

- JVM
- Heap
- Container Limits
- OOM Events

## Scenario 4

Disk 100% Full

Check:

df -h

du -sh

Logs

Core Dumps

## Scenario 5

Prometheus Target Down

Check:

- Exporter Service
- Network Access
- Firewall
- Configuration

The monitoring workbook emphasizes troubleshooting scrape issues. 【1-5a6a78】【2-ce4429】

## Scenario 6

Grafana Dashboard Empty

Check:

- Data Source
- Prometheus Connectivity
- Queries

## Scenario 7

Alert Not Triggering

Check:

- Alert Rule
- Query
- Threshold
- Alertmanager

The monitoring workbook explicitly includes alert troubleshooting. 【1-5a6a78】【2-ce4429】

## Scenario 8

Kubernetes Pod Crash

Check:

kubectl logs

kubectl describe pod

Resource Usage

## Scenario 9

Node Exporter Down

Check:

systemctl status node_exporter

Prometheus Target

Firewall

## Scenario 10

CloudWatch Alarm Not Working

Check:

- Threshold
- Metric
- Evaluation Period

## Production Incident

Issue:

Application Unavailable

Investigation:

1. Alert Trigger
2. Dashboard Review
3. Logs Analysis
4. Infrastructure Validation
5. Deployment Review

Root Cause:

Database Connection Pool Exhausted

Resolution:

Restart Service

Tune Connection Pool

Validation:

Application Healthy

Prevention:

New Alert Added
