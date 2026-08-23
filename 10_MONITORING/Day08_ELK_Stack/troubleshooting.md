# Day 08 - Troubleshooting

## Issue 1

Elasticsearch Not Starting

Cause:

Insufficient Memory

Solution:

Increase JVM memory settings.

## Issue 2

Kibana Not Accessible

Cause:

Port blocked.

Solution:

Allow:

5601/TCP

## Issue 3

Logs Not Reaching Elasticsearch

Cause:

Logstash Pipeline Error

Solution:

Review Logstash configuration.

## Issue 4

Index Not Created

Cause:

Data ingestion issue.

Solution:

Verify Logstash output.

## Issue 5

Search Returns No Results

Cause:

Wrong index pattern.

Solution:

Verify Kibana configuration.

## Production Scenario 1

Disk Usage Suddenly Increases

Root Cause:

Log retention not configured.

Solution:

Implement index lifecycle policy.

## Production Scenario 2

Elasticsearch Cluster Red

Root Cause:

Node failure.

Solution:

Investigate cluster health.

## Production Scenario 3

Kibana Dashboard Empty

Root Cause:

No incoming logs.

Solution:

Verify data pipeline.

## Production Scenario 4

High Elasticsearch CPU Utilization

Root Cause:

Expensive search queries.

Solution:

Optimize indices and queries.

## Production Scenario 5

Application Issue But No Logs Available

Root Cause:

Log shipping failure.

Solution:

Verify ingestion pipeline and agent health.
