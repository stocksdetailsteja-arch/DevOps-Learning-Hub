# Day 04 - Troubleshooting

## Issue 1

Query Returns No Data

Cause:

Metric not available.

Solution:

Verify metric name.

## Issue 2

Target Shows DOWN

Cause:

Prometheus scrape failure.

Solution:

Verify target health.

## Issue 3

Incorrect Results

Cause:

Wrong label filters.

Solution:

Review label configuration.

## Issue 4

Slow Queries

Cause:

High cardinality.

Solution:

Reduce label complexity.

## Issue 5

Dashboard Displays N/A

Cause:

Query errors.

Solution:

Validate PromQL syntax.

## Production Scenario 1

CPU Dashboard Empty.

Root Cause:

Node Exporter not running.

Solution:

Restore exporter.

## Production Scenario 2

Memory Graph Incorrect.

Root Cause:

Wrong metric selected.

Solution:

Validate query.

## Production Scenario 3

Prometheus High Memory Usage.

Root Cause:

Excessive high-cardinality labels.

Solution:

Simplify metrics collection.

## Production Scenario 4

Alert Not Triggering.

Root Cause:

Incorrect PromQL expression.

Solution:

Test expression manually.

## Production Scenario 5

Grafana Dashboard Slow.

Root Cause:

Expensive PromQL query.

Solution:

Optimize aggregations.
