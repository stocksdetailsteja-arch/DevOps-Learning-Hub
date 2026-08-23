# Day 03 - Troubleshooting

## Issue 1

Node Exporter Not Starting

Cause:

Binary permission issue.

Solution:

Verify executable permissions.

## Issue 2

Port 9100 Not Reachable

Cause:

Firewall restriction.

Solution:

Allow:

9100/TCP

## Issue 3

Target Shows DOWN

Cause:

Network connectivity issue.

Solution:

Verify:

curl SERVER-IP:9100/metrics

## Issue 4

Metrics Missing

Cause:

Service not running.

Solution:

Restart exporter.

## Issue 5

Prometheus Not Scraping

Cause:

Incorrect target configuration.

Solution:

Verify:

prometheus.yml

## Production Scenario 1

Linux metrics disappear suddenly.

Root Cause:

Node Exporter service stopped.

Solution:

Restart service.

## Production Scenario 2

Hundreds of targets become DOWN.

Root Cause:

Firewall update blocked monitoring traffic.

Solution:

Restore monitoring access.

## Production Scenario 3

Grafana dashboard shows N/A.

Root Cause:

Prometheus scrape failures.

Solution:

Check target health.

## Production Scenario 4

Monitoring delays occur.

Root Cause:

Server resource saturation.

Solution:

Review CPU and memory consumption.

## Production Scenario 5

Metrics inaccessible externally.

Root Cause:

Security Group restriction.

Solution:

Update AWS Security Group rules.
