# Day 09 - Troubleshooting

## Issue 1

Prometheus Target Down

Cause:

Node Exporter unavailable.

Solution:

Restart exporter.

## Issue 2

Grafana Dashboard Empty

Cause:

Query failure.

Solution:

Verify Prometheus data source.

## Issue 3

Alert Not Triggering

Cause:

Incorrect alert rule.

Solution:

Validate PromQL expression.

## Issue 4

Logs Missing

Cause:

Logstash ingestion problem.

Solution:

Verify Logstash pipeline.

## Issue 5

CloudWatch Metrics Missing

Cause:

CloudWatch Agent not configured.

Solution:

Review agent configuration.

## Production Scenario 1

CPU Alert Triggered

Root Cause:

Runaway Java Process.

Solution:

Analyze process using top and logs.

## Production Scenario 2

Disk Utilization Reached 95%

Root Cause:

Log retention issue.

Solution:

Implement log rotation.

## Production Scenario 3

Application Slow But CPU Normal

Root Cause:

Database bottleneck.

Solution:

Analyze logs and queries.

## Production Scenario 4

Large Alert Storm

Root Cause:

Dependency failure.

Solution:

Improve grouping and inhibition rules.

## Production Scenario 5

Dashboard Shows Incorrect Data

Root Cause:

Incorrect PromQL aggregation.

Solution:

Validate metric source and query.
