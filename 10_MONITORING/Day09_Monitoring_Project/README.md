# Day 09 - Monitoring Project

## Objective

Build a complete end-to-end monitoring project using the tools learned so far:

- Prometheus
- Node Exporter
- Grafana
- AlertManager
- AWS CloudWatch
- ELK Stack

This project simulates a real-world DevOps monitoring environment where infrastructure, logs, metrics, dashboards, and alerts work together.

## Project Overview

A company hosts a production application on AWS EC2.

The DevOps team must:

- Monitor server health
- Visualize metrics
- Collect logs
- Generate alerts
- Investigate incidents
- Maintain uptime

## Project Architecture

Linux Server

↓

Node Exporter

↓

Prometheus

↓

Grafana

↓

Dashboards

↓

AlertManager

↓

Notifications

Production Logs

↓

Logstash

↓

Elasticsearch

↓

Kibana

AWS Infrastructure

↓

CloudWatch

↓

CloudWatch Alarms

## Technologies Used

- Ubuntu EC2
- Prometheus
- Node Exporter
- Grafana
- AlertManager
- CloudWatch
- Elasticsearch
- Logstash
- Kibana

## Project Goals

By completing this project you will learn:

- End-to-End Monitoring
- Infrastructure Monitoring
- Centralized Logging
- Dashboard Design
- Alerting Strategy
- Production Troubleshooting
- Incident Investigation
