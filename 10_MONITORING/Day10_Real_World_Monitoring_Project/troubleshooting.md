# Day 10 - Troubleshooting

## Issue 1

Prometheus Targets Down

Cause:

Exporter unavailable.

Solution:

Restart exporter and verify connectivity.

## Issue 2

Grafana Dashboard Empty

Cause:

Datasource issue.

Solution:

Validate Prometheus connection.

## Issue 3

Alerts Not Triggering

Cause:

Rule configuration mistake.

Solution:

Validate alert expressions.

## Issue 4

Logs Missing

Cause:

Logstash pipeline issue.

Solution:

Review pipeline configuration.

## Issue 5

CloudWatch Alarms Not Triggering

Cause:

Improper threshold or SNS configuration.

Solution:

Review alarm settings.

## Production Scenario 1

CPU Alert Storm

Root Cause:

Application memory leak.

Solution:

Analyze processes and logs.

## Production Scenario 2

High Disk Utilization

Root Cause:

Log retention issue.

Solution:

Implement cleanup policy.

## Production Scenario 3

Application Unavailable

Root Cause:

Backend service failure.

Solution:

Review metrics and logs.

## Production Scenario 4

Dashboard Shows Incorrect Data

Root Cause:

Query misconfiguration.

Solution:

Validate data source and queries.

## Production Scenario 5

Operations Team Misses Critical Alert

Root Cause:

Improper routing.

Solution:

Review escalation path and AlertManager configuration.

## Production Scenario 6

Monitoring Server Overloaded

Root Cause:

Large metric cardinality.

Solution:

Reduce unnecessary labels and optimize retention.
