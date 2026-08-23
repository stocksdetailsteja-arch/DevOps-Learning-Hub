# Day 06 - AlertManager Concepts

## What Is AlertManager?

Alertmanager is a component of the Prometheus monitoring ecosystem.

It receives alerts from Prometheus and manages notifications.

## Alert Flow

Node Exporter

↓

Prometheus

↓

Alert Rules

↓

AlertManager

↓

Email

↓

Operations Team

## Alert Lifecycle

Metric Collected

↓

Rule Evaluated

↓

Alert Fired

↓

AlertManager

↓

Notification Sent

↓

Issue Resolved

↓

Alert Cleared

## Alert Rules

Alert Rules define when a notification should be generated.

Examples:

- CPU Above 80%
- Memory Above 90%
- Disk Usage Above 85%

## Receiver

A Receiver is the destination for alerts.

Examples:

- Email
- Slack
- PagerDuty
- Webhook

## Routing

Routing sends alerts to the appropriate receiver based on labels and conditions. 【1-ca89f6】【3-fde8c0】

Example:

- Infrastructure Team
- Database Team
- DevOps Team

## Grouping

Grouping combines similar alerts into one notification, helping reduce noise during large incidents. 【1-ca89f6】【4-56ff87】

Example:

100 servers fail

AlertManager sends a grouped notification instead of 100 individual alerts.

## Deduplication

Deduplication prevents repeated notifications for the same alert. 【1-ca89f6】

## Silencing

Silencing temporarily suppresses alerts during maintenance activities. 【1-ca89f6】

Examples:

- Planned Upgrade
- Server Maintenance
- Application Deployment

## Inhibition

Inhibition suppresses secondary alerts when a higher priority alert is already firing. 【1-ca89f6】

Example:

Database Down

↓

Suppress Application Errors

## Alert Labels

Examples:

- severity
- environment
- team
- application

## Benefits

- Noise Reduction
- Faster Incident Response
- Better Alert Management
- Production Readiness
