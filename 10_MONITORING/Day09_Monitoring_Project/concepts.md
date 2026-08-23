# Day 09 - Monitoring Project Concepts

## Project Goal

Build a centralized monitoring platform.

Monitor:

- Infrastructure
- Applications
- Logs
- AWS Resources

## Monitoring Stack

### Infrastructure Monitoring

Node Exporter

↓

Prometheus

Collects:

- CPU
- Memory
- Disk
- Network

### Visualization Layer

Grafana

Provides:

- Dashboards
- Charts
- Operational Visibility

### Alerting Layer

AlertManager

Provides:

- Routing
- Grouping
- Notifications

### Cloud Layer

CloudWatch

Provides:

- AWS Metrics
- AWS Logs
- AWS Alarms

### Logging Layer

ELK Stack

Provides:

- Log Collection
- Log Search
- Root Cause Analysis

## Incident Workflow

Incident

↓

Alert Trigger

↓

Dashboard Review

↓

Log Analysis

↓

Root Cause Identification

↓

Resolution

↓

Verification

## Benefits

- Faster Detection
- Faster Recovery
- Reduced Downtime
- Improved Reliability
- Better Visibility
