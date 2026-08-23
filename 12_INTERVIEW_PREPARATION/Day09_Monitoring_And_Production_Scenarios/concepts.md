# Monitoring And Observability Concepts

## Monitoring

Monitoring collects and analyzes system and application signals.

Monitoring reduces detection and recovery time by making failures visible. 【1-5a6a78】【2-ce4429】

## Observability

Observability helps explain internal behavior using telemetry data. 【1-5a6a78】【2-ce4429】

## Three Pillars Of Observability

### Metrics

Numerical measurements.

Examples:

- CPU Usage
- Memory Usage
- Disk Usage
- HTTP Requests
- Error Rate

### Logs

Detailed system events.

Examples:

- Application Logs
- Access Logs
- Error Logs

### Traces

Track request flow across services.

Useful for:

- Microservices
- Root Cause Analysis

## Monitoring Workflow

Instrument

↓

Collect

↓

Query

↓

Visualize

↓

Alert

↓

Investigate

↓

Improve

This workflow is explicitly defined in your monitoring workbook. 【1-5a6a78】【2-ce4429】

## Prometheus

Open-source monitoring platform.

Responsibilities:

- Metrics Collection
- Time Series Storage
- Alert Evaluation

## Exporters

Expose metrics to Prometheus.

Examples:

- Node Exporter
- Blackbox Exporter
- JMX Exporter

## PromQL

Query language used by Prometheus.

## Grafana

Visualization platform.

Capabilities:

- Dashboards
- Alerts
- Analytics

Grafana provides dashboards, visualizations and alerting. 【5-ef4b08】【6-6422c4】

## Alertmanager

Handles:

- Alert Routing
- Deduplication
- Notifications

Alertmanager routes alerts based on rules and handles deduplication. 【7-eb42de】【5-ef4b08】

## CloudWatch

AWS-native monitoring platform.

Capabilities:

- Metrics
- Logs
- Alarms
- Dashboards

## SLI

Service Level Indicator.

Examples:

- Availability
- Error Rate
- Latency

## SLO

Target performance objective.

Example:

99.9% Availability

## SLA

Business commitment to users.

## Golden Signals

- Latency
- Traffic
- Errors
- Saturation

## Production Monitoring Stack

Application

↓

Metrics

↓

Prometheus

↓

Grafana

↓

Alertmanager

↓

Email/Teams

↓

Engineer

## Incident Lifecycle

Detection

↓

Investigation

↓

Mitigation

↓

Resolution

↓


