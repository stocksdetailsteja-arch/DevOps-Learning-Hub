# Day 10 - Real World Monitoring Project Concepts

## What Is Observability?

Observability is the ability to understand a system using:

- Metrics
- Logs
- Traces

Monitoring tells us something is wrong.

Observability helps explain why it is wrong.

## Three Pillars Of Observability

### Metrics

Examples:

- CPU Usage
- Memory Usage
- Error Rate
- Response Time

Collected using:

- Prometheus
- CloudWatch

### Logs

Examples:

- Application Logs
- Nginx Logs
- System Logs

Collected using:

- ELK Stack

### Traces

Used for distributed application monitoring.

## Production Monitoring Architecture

Infrastructure Layer

↓

Metrics Layer

↓

Prometheus

↓

Visualization Layer

↓

Grafana

↓

Alerting Layer

↓

AlertManager

↓

Operations Team

Logging Layer

↓

ELK Stack

↓

Root Cause Analysis

Cloud Layer

↓

AWS CloudWatch

↓

Cloud Monitoring

## SLI

Service Level Indicator

Examples:

- Availability
- Error Rate
- Latency

## SLO

Service Level Objective

Examples:

99.9% Availability

## Alert Strategy

Critical

- Service Down
- Database Failure

High

- CPU > 90%

Medium

- Disk > 80%

Low

- Informational Alerts

## Runbook Strategy

Every alert should include:

- Symptoms
- Root Cause Checks
- Investigation Commands
- Recovery Steps
- Escalation Details
