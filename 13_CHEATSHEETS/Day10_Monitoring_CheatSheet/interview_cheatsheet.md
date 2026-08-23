# Monitoring Interview Cheatsheet

## What Is Monitoring?

Monitoring collects and analyzes system and application signals.

Monitoring helps detect failures and reduce recovery time.

The monitoring workbook defines monitoring as collecting and analyzing system/application signals. 【1-67742f】【2-420f51】

## What Is Observability?

Observability explains internal system behavior using telemetry.

The workbook defines observability as understanding internal behavior from telemetry. 【1-67742f】【2-420f51】

## Three Pillars Of Observability

### Metrics

Numerical Measurements

Examples:

- CPU
- Memory
- Disk
- Requests

### Logs

Detailed Event Records

### Traces

Request Flow Tracking

The workbook specifically includes Metrics, Logs and Traces. 【1-67742f】【2-420f51】

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

This workflow is directly described in the monitoring workbook. 【1-67742f】【2-420f51】

## What Is Prometheus?

Time-series monitoring platform.

Responsibilities:

- Metrics Collection
- Storage
- Alert Evaluation

The workbook includes Prometheus and PromQL as core monitoring components. 【1-67742f】【2-420f51】

## What Is Grafana?

Visualization platform.

Provides:

- Dashboards
- Charts
- Alerting

Grafana is used for dashboards and visualization. 【3-734a8b】【4-8e17d4】

## What Is Alertmanager?

Alert Routing System.

Provides:

- Alert Routing
- Deduplication
- Notifications

Alertmanager handles routing and deduplication. 【3-734a8b】

## What Is PromQL?

Prometheus Query Language.

Used to query metrics.

The workbook specifically requires understanding PromQL. 【1-67742f】【2-420f51】

## What Is CloudWatch?

AWS Monitoring Service.

Provides:

- Metrics
- Logs
- Alarms
- Dashboards

The workbook includes CloudWatch as a primary monitoring tool. 【1-67742f】【2-420f51】

## What Is CloudTrail?

AWS Audit Service.

Tracks API Activity.

## SLI

Service Level Indicator

Examples:

- Availability
- Latency
- Error Rate

## SLO

Service Level Objective

Target value of service quality.

## SLA

Business agreement for service quality.

## Golden Signals

- Latency
- Traffic
- Errors
- Saturation

## RCA

Root Cause Analysis

Framework:

Symptom

↓

Evidence

↓

Hypothesis

↓

Test

↓

Cause

↓

Fix

↓

Prevention

The AI monitoring workbook explicitly describes RCA using symptom → evidence → hypothesis → test → cause → fix → prevention. 【5-98af35】【6-37a8bc】

## Monitoring Stack

Application

↓

Node Exporter

↓

Prometheus

↓

Grafana

↓

Alertmanager

↓

Engineers

The monitoring workbook mini-project uses Node Exporter, Prometheus, Grafana and alert routing. 【1-67742f
