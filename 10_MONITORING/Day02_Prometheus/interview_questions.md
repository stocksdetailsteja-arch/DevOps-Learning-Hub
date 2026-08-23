# Day 02 - Interview Questions

## Beginner Level

### What is Prometheus?

Prometheus is an open-source monitoring and alerting system used to collect and store metrics. 【2-7866c1】【1-79a278】

### What type of database does Prometheus use?

Time-Series Database (TSDB). 【5-06c277】【2-7866c1】

### What is a Metric?

A numerical measurement collected over time.

### What is an Exporter?

A component that exposes metrics in Prometheus format. 【2-7866c1】【3-c81ba0】

### What is a Target?

A monitored endpoint from which Prometheus collects metrics.

## Intermediate Level

### Explain Pull Model.

Prometheus fetches metrics from targets using HTTP instead of waiting for targets to push data. 【2-7866c1】【3-c81ba0】

### What is a Label?

A key-value pair attached to metrics.

### What is a Job?

A logical grouping of monitored targets.

### What is a Scrape Interval?

Frequency of metric collection.

### What is prometheus.yml?

Main configuration file.

## Advanced Level (5+ Years)

### Why is Prometheus popular in Kubernetes?

Because it supports service discovery and cloud-native environments. 【1-79a278】【2-7866c1】

### What are Prometheus limitations?

- Long-term retention challenges
- High-cardinality problems
- Not a log management system

### Explain Time-Series Storage.

Metrics are stored with timestamps and labels in a TSDB. 【5-06c277】【2-7866c1】

### What happens when a target is down?

Prometheus marks it as DOWN and scraping fails.

### Explain a production monitoring architecture.

Node Exporter

↓

Prometheus

↓

Grafana

↓

Alertmanager

Used across hundreds of Linux and Kubernetes servers.
