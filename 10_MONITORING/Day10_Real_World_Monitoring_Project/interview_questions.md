# Day 10 - Interview Questions

## Beginner Level

### What was the objective of this project?

To implement a complete production monitoring and observability platform.

### Which tools were used?

- Prometheus
- Grafana
- AlertManager
- CloudWatch
- ELK Stack

### Why use Prometheus?

Metrics collection and storage.

### Why use Grafana?

Visualization and dashboards.

### Why use ELK?

Centralized logging.

## Intermediate Level

### Explain the monitoring architecture.

Node Exporter

↓

Prometheus

↓

Grafana

↓

AlertManager

Logs

↓

ELK Stack

Cloud

↓

CloudWatch

### How do metrics and logs work together?

Metrics identify issues.

Logs explain the root cause.

### Why use AlertManager?

To manage routing, grouping, and notifications.

### Why use CloudWatch alongside Prometheus?

CloudWatch provides native AWS monitoring.

### How do you investigate alerts?

Review:

- Dashboard
- Metrics
- Alerts
- Logs

## Advanced Level (5+ Years)

### How would you monitor 1000 Linux servers?

Use:

- Node Exporter
- Prometheus
- AlertManager
- Grafana

with standardized dashboards and alerts.

### How would you avoid alert fatigue?

- Group related alerts
- Create meaningful thresholds
- Reduce low-value alerts

### Explain an observability strategy.

Use:

- Metrics
- Logs
- Alerts
- Runbooks
- Incident Reviews

### What evidence is collected during an incident?

- Metrics Snapshots
- Dashboard Images
- Alert Timeline
- Logs
- Infrastructure Status

This aligns with your monitoring workbook incident guidance and evidence collection approach. 【1-fa7192】【2-1450dd】

### Explain a real-world production incident.

Users reported slow application performance.

Grafana showed normal CPU.

Prometheus showed increased request latency.

Kibana revealed repeated database timeout errors.

Root cause:

Database connection pool exhaustion.

Resolution:

Increased pool size and optimized queries.

### How would you explain this project in an interview?

Problem

↓

Architecture

↓

Implementation

↓

Monitoring

↓

Incident Handling

↓

Results

↓

Lessons Learned

This matches the project interview approach documented in your portfolio workbook. 【3-b25df3】【4-0d9cfc】
