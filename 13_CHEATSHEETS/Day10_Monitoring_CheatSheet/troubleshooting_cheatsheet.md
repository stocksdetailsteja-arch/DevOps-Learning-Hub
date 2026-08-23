# Monitoring Troubleshooting Cheat Sheet

## High CPU Alert

Check:

top

htop

Prometheus Dashboard

CloudWatch Metrics

Investigate:

- Process Usage
- Deployment Changes
- Traffic Increase

## High Memory Alert

Check:

free -h

top

Prometheus Metrics

Investigate:

- Memory Leak
- JVM Heap
- Container Limits

## Disk Usage Full

Check:

df -h

du -sh *

Investigate:

- Logs
- Temporary Files
- Backups

## Application Down

Check:

- Dashboard
- Alerts
- Logs
- Service Status

## Prometheus Target Down

Check:

http://target:9100/metrics

Verify:

- Exporter Running
- Firewall
- Network Access

The monitoring workbook specifically includes troubleshooting scrape issues. 【1-67742f】【2-420f51】

## Grafana Dashboard Empty

Check:

- Data Source
- Query
- Prometheus Connectivity

## Alert Not Triggering

Check:

- Expression
- Threshold
- Alert Rule
- Alertmanager

The workbook specifically includes troubleshooting alert issues. 【1-67742f】【2-420f51】

## CloudWatch Alarm Not Firing

Check:

- Threshold
- Metric
- Evaluation Period

## Kubernetes Monitoring Issue

Check:

kubectl top pods

kubectl get events

kubectl logs pod

## JVM Out Of Memory

Check:

- Heap Usage
- GC Logs
- Memory Metrics

Monitoring JVM OOM issues is specifically mentioned in monitoring guidance. 【3-734a8b】

## Incident Investigation Checklist

Collect:

- Alerts
- Metrics
- Logs
- Timeline
- Topology
- Recent Changes

The AI monitoring workbook explicitly recommends collecting timeline, logs, metrics, alerts, changes and topology. 【5-98af35】【6-37a8bc】

## Production Investigation Flow

Alert

↓

Dashboard

↓

Metrics

↓

Logs

↓

Recent Changes

↓

Root Cause

↓

Fix

↓

Validation

↓

RCA
