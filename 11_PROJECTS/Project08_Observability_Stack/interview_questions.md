# Observability Interview Questions

## Beginner

### What Is Observability?

Ability to understand internal system behaviour through telemetry. 【1-d17d22】【2-3ba7db】

### What Are The Three Pillars?

- Metrics
- Logs
- Traces 【8-10286d】【9-ed0091】

### What Is Prometheus?

Metrics collection and time-series database. 【6-0d3521】【5-6cec1a】

### What Is Grafana?

Dashboard and visualization platform. 【6-0d3521】【7-b69290】

## Intermediate

### Explain Prometheus Pull Model.

Prometheus scrapes metrics from configured targets. 【6-0d3521】【5-6cec1a】

### What Is Node Exporter?

Linux server metrics exporter. 【1-d17d22】【5-6cec1a】

### What Is Alertmanager?

Receives alerts and routes notifications. 【6-0d3521】【7-b69290】

## Advanced (5+ Years)

### How Would You Reduce Alert Fatigue?

- Meaningful thresholds
- Alert grouping
- Severity classification
- Noise reduction

### Explain A Production CPU Incident.

Investigation:

- Prometheus Metrics
- Grafana Graphs
- Host Processes

Root Cause:

Runaway application process

Resolution:

Process optimization

### What Is High Cardinality?

Large metric label combinations causing Prometheus performance issues. The workbook highlights labels and cardinality as an application metrics topic. 【1-d17d22】【2-3ba7db】

### Explain RED Monitoring.

- Request Rate
- Error Rate
- Duration

### Explain USE Monitoring.

- Utilization
- Saturation
- Errors
