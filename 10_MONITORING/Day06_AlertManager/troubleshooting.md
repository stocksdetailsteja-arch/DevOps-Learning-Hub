# Day 06 - Troubleshooting

## Issue 1

AlertManager Not Starting

Cause:

Configuration Error

Solution:

Validate:

alertmanager.yml

## Issue 2

No Alerts Received

Cause:

Prometheus not connected.

Solution:

Verify AlertManager configuration in Prometheus.

## Issue 3

Notifications Not Sent

Cause:

Receiver misconfiguration.

Solution:

Validate email or webhook settings.

## Issue 4

Alert Never Fires

Cause:

Incorrect alert rule.

Solution:

Test query inside Prometheus.

## Issue 5

UI Not Reachable

Cause:

Port 9093 blocked.

Solution:

Allow:

9093/TCP

## Production Scenario 1

Thousands Of Alerts Received

Root Cause:

Improper grouping.

Solution:

Implement grouping policies.

## Production Scenario 2

Critical Alerts Missed

Root Cause:

Incorrect routing configuration.

Solution:

Review routing tree.

## Production Scenario 3

Alert Spam During Maintenance

Root Cause:

Missing silences.

Solution:

Create maintenance silences.

## Production Scenario 4

Repeated Notifications

Root Cause:

Deduplication configuration issue.

Solution:

Review repeat intervals.

## Production Scenario 5

Application Alert Flood

Root Cause:

Database outage triggering dependent alerts.

Solution:

Implement inhibition rules.
