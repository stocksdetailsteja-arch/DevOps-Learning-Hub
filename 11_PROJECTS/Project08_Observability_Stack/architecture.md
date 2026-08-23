# Observability Architecture

## Architecture

Linux Server

↓

Node Exporter

↓

Prometheus

↓

Time Series Database

↓

Grafana

↓

Operations Team

Prometheus

↓

Alert Rules

↓

Alertmanager

↓

Email Notification

## Components

### Node Exporter

Provides:

- CPU Metrics
- Memory Metrics
- Disk Metrics
- Network Metrics

### Prometheus

Collects and stores metrics using a pull-based model. 【5-6cec1a】【6-0d3521】

### Grafana

Provides dashboards and visualization. 【5-6cec1a】【7-b69290】

### Alertmanager

Handles alert routing and notifications. 【5-6cec1a】【6-0d3521】

### CloudWatch

Provides AWS monitoring metrics, logs, alarms and dashboards. 【1-d17d22】【2-3ba7db】

## Failure Flow

Metric Spike

↓

Prometheus Rule

↓

Alert Fired

↓

Alertmanager

↓

Notification

↓

Investigation

↓

Resolution
``
