# Observability Concepts

## Monitoring

Monitoring collects and analyzes system and application signals. 【1-d17d22】【2-3ba7db】

## Observability

Observability helps explain internal behaviour using telemetry. 【1-d17d22】【2-3ba7db】

## Three Pillars

### Metrics

Numerical values over time. 【8-10286d】

Examples:

- CPU
- Memory
- Disk
- Response Time

### Logs

Detailed event information. 【8-10286d】【9-ed0091】

### Traces

Distributed request tracking. 【8-10286d】【9-ed0091】

## Prometheus

Time-series database and scraping engine. 【6-0d3521】【5-6cec1a】

## Grafana

Visualization and dashboard platform. 【6-0d3521】【7-b69290】

## Alertmanager

Alert routing and notification tool. 【6-0d3521】【7-b69290】

## Node Exporter

Provides Linux host metrics. 【1-d17d22】【5-6cec1a】

## RED Method

- Rate
- Errors
- Duration

## USE Method

- Utilization
- Saturation
- Errors

These are explicitly covered in the observability workbook application metrics section. 【1-d17d22】【2-3ba7db】

## Cardinality

Excess labels increase Prometheus storage and query cost. The workbook specifically calls out labels and cardinality for application metrics. 【1-d17d22】【2-3ba7db】
