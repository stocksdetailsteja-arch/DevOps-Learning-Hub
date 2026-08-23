# Day 02 - Troubleshooting

## Issue 1

Prometheus Not Starting

Cause:

Invalid configuration.

Solution:

Verify prometheus.yml

## Issue 2

Port 9090 Not Reachable

Cause:

Firewall restriction.

Solution:

Allow:

9090/TCP

## Issue 3

Target Shows DOWN

Cause:

Exporter not running.

Solution:

Verify exporter status.

## Issue 4

No Metrics Available

Cause:

Scrape failure.

Solution:

Check target endpoint.

## Issue 5

Configuration Error

Cause:

YAML formatting issue.

Solution:

Validate configuration carefully.

## Production Scenario 1

Monitoring stopped for 200 servers.

Root Cause:

Prometheus server failure.

Solution:

Restore service and verify targets.

## Production Scenario 2

Metrics missing after deployment.

Root Cause:

Exporter removed accidentally.

Solution:

Reinstall exporter.

## Production Scenario 3

Prometheus memory usage grows continuously.

Root Cause:

High metric cardinality.

Solution:

Reduce unnecessary labels.

## Production Scenario 4

Target intermittent failures.

Root Cause:

Network instability.

Solution:

Investigate connectivity and firewall rules.

## Production Scenario 5

Dashboard showing incorrect data.

Root Cause:

Wrong query or target configuration.

Solution:

Verify metric source and scrape health.
