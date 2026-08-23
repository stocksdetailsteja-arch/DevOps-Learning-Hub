# Day 09 - Interview Questions

## Beginner Level

### What was the goal of the Monitoring Project?

To build an end-to-end monitoring platform using modern monitoring tools.

### Which tools were used?

- Prometheus
- Grafana
- AlertManager
- CloudWatch
- ELK Stack

### Why use Prometheus?

For metrics collection and storage.

### Why use Grafana?

For dashboard visualization.

### Why use ELK?

For centralized logging.

## Intermediate Level

### How do Prometheus and Grafana work together?

Prometheus stores metrics and Grafana visualizes them.

### Why use AlertManager?

To route and manage alerts.

### What benefits does centralized logging provide?

Faster troubleshooting and incident investigation.

### What AWS monitoring service was used?

CloudWatch.

### How do you troubleshoot an alert?

Review metrics, dashboards, and logs.

## Advanced Level (5+ Years)

### How would you monitor a production environment?

Implement:

- Metrics
- Logs
- Dashboards
- Alerts
- Runbooks

### Explain an observability architecture.

Applications

↓

Metrics

↓

Prometheus

↓

Grafana

↓

AlertManager

Logs

↓

ELK Stack

Cloud Metrics

↓

CloudWatch

### How would you reduce alert fatigue?

- Proper thresholds
- Alert grouping
- Alert routing
- Alert prioritization

### How would you investigate a production outage?

Review:

- Dashboards
- Alert History
- Application Logs
- Infrastructure Metrics

### Explain a real-world incident.

Application response time increased.

Grafana showed CPU utilization normal.

Kibana logs showed repeated database timeout exceptions.

Root cause was database congestion.

Logs helped identify the real issue while metrics alone did not.
