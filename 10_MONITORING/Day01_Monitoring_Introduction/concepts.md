# Day 01 - Monitoring Concepts

## What Is Monitoring?

Monitoring is the process of collecting and analyzing data from systems and applications.

The goal is to identify problems before users are affected.

## What Is Observability?

Observability is the ability to understand the internal state of a system by examining external outputs.

These outputs are:

- Metrics
- Logs
- Traces

## Metrics

Metrics are numerical measurements collected over time.

Examples:

- CPU Usage
- Memory Usage
- Disk Usage
- Request Count
- Error Rate

## Logs

Logs are records that describe events occurring in a system.

Examples:

- Application Logs
- Nginx Logs
- Linux Logs
- Docker Logs

## Traces

Traces track requests across multiple services.

Useful in:

- Microservices
- Distributed Systems

## Events

Events represent activities or state changes.

Examples:

- Server Restart
- Deployment
- Login Failure

## SLI

Service Level Indicator

A measurement of service performance.

Examples:

- Error Rate
- Availability
- Response Time

## SLO

Service Level Objective

Target value for an SLI.

Example:

99.9% Availability

## SLA

Service Level Agreement

Business commitment made to customers.

## RED Method

Used for applications.

- Rate
- Errors
- Duration

## USE Method

Used for infrastructure.

- Utilization
- Saturation
- Errors
