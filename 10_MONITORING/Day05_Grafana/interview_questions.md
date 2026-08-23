# Day 05 - Interview Questions

## Beginner Level

### What is Grafana?

Grafana is a visualization platform used for monitoring dashboards. 【1-e7400e】【2-4642b3】

### What is a Dashboard?

A collection of monitoring panels.

### What is a Panel?

A visual representation of data. 【2-4642b3】

### What is a Data Source?

A backend system containing monitoring data. 【1-e7400e】

### Which port does Grafana use?

3000

## Intermediate Level

### How does Grafana work with Prometheus?

Grafana sends PromQL queries to Prometheus and visualizes returned metrics.

### What are Variables?

Reusable parameters used across dashboards.

### What are Transformations?

Operations that modify query results before visualization. 【2-4642b3】

### What are common dashboard panels?

- Time Series
- Gauge
- Table
- Stat

### Why use Grafana?

For visualization, analysis, and troubleshooting.

## Advanced Level (5+ Years)

### How would you design a production dashboard?

Include:

- CPU Usage
- Memory Usage
- Disk Usage
- Network Traffic
- Availability
- Error Rates

### How do you reduce dashboard noise?

- Use meaningful panels
- Remove duplicate graphs
- Use alert thresholds

### Explain dashboard provisioning.

Managing dashboards as code through version control.

### What are common Grafana performance issues?

- Expensive PromQL queries
- Too many panels
- Large time ranges

### Explain a real-world monitoring dashboard.

An enterprise dashboard included:

- Linux Metrics
- Kubernetes Metrics
- AWS Metrics
- Service Availability
- Application Latency

allowing faster incident investigation and resolution.
