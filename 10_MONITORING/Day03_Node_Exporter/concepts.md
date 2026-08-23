# Day 03 - Node Exporter Concepts

## What Is Node Exporter?

Node Exporter is a Prometheus exporter that exposes Linux and Unix system metrics.

It runs as a service on monitored servers.

## Why Use Node Exporter?

Node Exporter allows Prometheus to collect operating system metrics.

Without Node Exporter:

- No CPU Metrics
- No Memory Metrics
- No Disk Metrics
- No Network Metrics

## Exporter Architecture

Linux Server

↓

Node Exporter

↓

Metrics Endpoint

↓

Prometheus

↓

Grafana

## Default Port

Node Exporter runs on:

9100

Example:

http://SERVER-IP:9100/metrics

## Metrics Provided

### CPU Metrics

Examples:

- CPU Utilization
- CPU Load
- CPU Time

### Memory Metrics

Examples:

- Total Memory
- Used Memory
- Free Memory

### Filesystem Metrics

Examples:

- Free Space
- Used Space
- File System Usage

### Disk Metrics

Examples:

- Read Operations
- Write Operations
- IOPS

### Network Metrics

Examples:

- Bytes Received
- Bytes Sent
- Packet Statistics

## Collectors

Node Exporter collects metrics using collectors.

Examples:

- cpu
- memory
- filesystem
- network
- loadavg
- systemd

## Benefits

- Lightweight
- Easy Deployment
- Prometheus Compatible
- Production Ready
- Widely Adopted
