# Day 03 - Interview Questions

## Beginner Level

### What is Node Exporter?

Node Exporter is a Prometheus exporter that exposes Linux host metrics.

### Why is Node Exporter needed?

Prometheus requires exporters to collect operating system metrics.

### Which port does Node Exporter use?

9100

### What type of metrics does Node Exporter expose?

- CPU
- Memory
- Disk
- Filesystem
- Network

### How are metrics accessed?

Through:

/metrics

endpoint

## Intermediate Level

### How does Node Exporter work?

It collects operating system information and exposes it in Prometheus format.

### What is a Collector?

A collector gathers a category of metrics.

Examples:

- CPU
- Network
- Filesystem

### How does Prometheus collect Node Exporter metrics?

Using HTTP scraping.

### How can you verify the exporter is working?

Open:

http://SERVER-IP:9100/metrics

### What is node_cpu_seconds_total?

A CPU metric exposed by Node Exporter.

## Advanced Level (5+ Years)

### What are common production Node Exporter issues?

- Target Down
- Firewall Blocks
- High Cardinality
- Service Failure

### How do you secure Node Exporter?

- Firewall Rules
- Reverse Proxy
- Private Networks
- Authentication Layers

### How would you monitor 1000 servers?

- Node Exporter
- Prometheus
- Grafana
- Alertmanager

### Explain infrastructure monitoring strategy.

Collect:

- CPU
- Memory
- Network
- Disk
- Availability

Build dashboards and alerts.

### Explain a production incident.

Disk utilization increased to 95%.

Node Exporter metrics triggered alerts.

Operations team expanded storage before service outage occurred.
