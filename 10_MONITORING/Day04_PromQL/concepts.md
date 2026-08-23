# Day 04 - PromQL Concepts

## What Is PromQL?

PromQL stands for Prometheus Query Language.

It is used to retrieve and analyze metrics stored inside Prometheus.

## Metric Selector

A metric selector retrieves a metric.

Example:

node_cpu_seconds_total

Returns all matching time series.

## Labels

Labels are key-value pairs attached to metrics.

Example:

instance="server1"

job="node_exporter"

Labels allow filtering data.

## Label Filtering

Examples:

job="node_exporter"

instance="server1"

environment="production"

## Instant Vector

Returns current values.

Example:

up

Provides latest metric values.

## Range Vector

Returns metric values across a period of time.

Example:

metric[5m]

Returns last five minutes of data.

## Aggregation Operators

Examples:

- sum
- avg
- min
- max
- count

Used for grouping and summarization.

## Functions

PromQL includes functions such as:

- rate()
- increase()
- delta()
- irate()
- histogram_quantile()

## rate()

Calculates rate of change over time.

Commonly used for:

- HTTP Requests
- Network Traffic
- API Monitoring

## increase()

Calculates metric increase during a specified period.

## topk()

Returns highest values.

Useful for:

- Top CPU Consumers
- Top Memory Consumers

## Bottomk()

Returns lowest values.

## Alert Expressions

PromQL is used in Prometheus alerts.

Example:

CPU > 80%

Memory > 90%

Disk Usage > 85%

## Benefits

- Powerful Querying
- Metric Analysis
- Alert Creation
- Dashboard Integration
- Production Troubleshooting
