# Day 05 - Troubleshooting

## Issue 1

Grafana Not Starting

Cause:

Service failure.

Solution:

Check:

systemctl status grafana-server

## Issue 2

Grafana UI Not Accessible

Cause:

Port 3000 blocked.

Solution:

Allow:

3000/TCP

## Issue 3

Prometheus Data Source Failure

Cause:

Wrong URL.

Solution:

Verify Prometheus endpoint.

## Issue 4

Panels Show No Data

Cause:

Incorrect PromQL Query.

Solution:

Validate query in Prometheus.

## Issue 5

Dashboard Loads Slowly

Cause:

Expensive queries.

Solution:

Optimize PromQL expressions.

## Production Scenario 1

Dashboard Displays N/A

Root Cause:

Prometheus down.

Solution:

Restore Prometheus service.

## Production Scenario 2

Some Panels Missing

Root Cause:

Metric name changed.

Solution:

Update panel queries.

## Production Scenario 3

Grafana Server High CPU Usage

Root Cause:

Large dashboard refresh load.

Solution:

Optimize dashboard design.

## Production Scenario 4

Users Cannot Login

Root Cause:

Authentication configuration issue.

Solution:

Review Grafana authentication settings.

## Production Scenario 5

Dashboard Shows Delayed Metrics

Root Cause:

Prometheus scraping issues.

Solution:

Check exporter and target availability.
