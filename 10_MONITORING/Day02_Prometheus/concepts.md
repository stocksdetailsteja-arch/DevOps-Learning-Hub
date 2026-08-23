# Day 02 - Prometheus Concepts

## What Is Prometheus?

Prometheus is an open-source monitoring and alerting system.

It collects metrics from monitored targets and stores them as time-series data. 【2-7866c1】【1-79a278】

## What Is A Time-Series Metric?

A time-series metric contains:

- Metric Name
- Value
- Timestamp
- Labels

Example:

cpu_usage = 65%

recorded at a specific timestamp.

## Prometheus Architecture

Application Or Server

↓

Exporter

↓

Prometheus Server

↓

Time-Series Database

↓

PromQL

↓

Grafana

↓

Alertmanager

Prometheus scrapes metrics from exporters and stores them in its internal time-series database. 【2-7866c1】【3-c81ba0】

## Pull Model

Prometheus uses a Pull Model.

Prometheus connects to targets and collects metrics using HTTP. 【2-7866c1】【3-c81ba0】

Benefits:

- Easier management
- Better reliability
- Dynamic discovery

## Targets

Targets are systems monitored by Prometheus.

Examples:

- Linux Server
- Docker Host
- Kubernetes Node
- Application Endpoint

## Exporters

Exporters expose metrics in Prometheus format.

Common Exporters:

- Node Exporter
- MySQL Exporter
- Nginx Exporter
- Apache Exporter
- Blackbox Exporter

## Jobs

A Job groups monitoring targets together.

Example:

job_name: linux_servers

## Labels

Labels are key-value pairs attached to metrics.

Example:

instance="server1"

environment="production"

Labels help filtering and aggregation.

## Scrape Interval

Defines how often Prometheus collects metrics.

Example:

15 seconds

30 seconds

60 seconds

## prometheus.yml

Main Prometheus configuration file.

Contains:

- Targets
- Jobs
- Scrape Configuration
- Alert Rules

## Benefits

- Open Source
- Cloud Native
- Highly Scalable
- Powerful Querying
- Alert Integration
