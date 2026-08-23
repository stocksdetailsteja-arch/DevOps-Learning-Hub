# Day 05 - Grafana Concepts

## What Is Grafana?

Grafana is an open-source visualization and dashboard platform.

It connects to monitoring systems and displays metrics in graphical form.

## Grafana Architecture

Node Exporter

↓

Prometheus

↓

Grafana

↓

Dashboard

↓

Operations Team

## What Is A Data Source?

A Data Source provides data to Grafana.

Examples:

- Prometheus
- CloudWatch
- Elasticsearch
- Loki
- MySQL

## What Is A Dashboard?

A Dashboard is a collection of panels used to visualize system metrics.

Examples:

- Infrastructure Dashboard
- Application Dashboard
- Kubernetes Dashboard

## What Is A Panel?

A Panel is a visual representation of data.

Examples:

- Graph
- Gauge
- Table
- Stat Panel
- Heatmap

## What Is A Query?

Queries fetch monitoring data.

Example:

PromQL Query

CPU Usage Query

Memory Usage Query

## Variables

Variables make dashboards reusable.

Examples:

- Server Selection
- Environment Selection
- Application Selection

## Transformations

Transformations modify query results.

Examples:

- Merge Data
- Rename Fields
- Filter Values
- Aggregate Data

## Dashboard Components

- Panels
- Queries
- Variables
- Visualizations
- Alerts

## Benefits

- Easy Visualization
- Faster Troubleshooting
- Better Monitoring
- Centralized Visibility
