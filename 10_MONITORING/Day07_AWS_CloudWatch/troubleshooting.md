# Day 07 - Troubleshooting

## Issue 1

No Metrics Available

Cause:

Resource not running.

Solution:

Verify service status.

## Issue 2

Alarm Not Triggering

Cause:

Threshold not reached.

Solution:

Generate test workload.

## Issue 3

CloudWatch Agent Not Running

Cause:

Configuration failure.

Solution:

Review agent status.

## Issue 4

Logs Missing

Cause:

Incorrect log collection.

Solution:

Review agent configuration.

## Issue 5

Notifications Not Sent

Cause:

SNS misconfiguration.

Solution:

Verify SNS topic subscription.

## Production Scenario 1

EC2 Server Down

Root Cause:

Instance terminated.

Solution:

Investigate CloudTrail and EC2 status.

## Production Scenario 2

High CPU Alert Not Generated

Root Cause:

Alarm configuration error.

Solution:

Review alarm configuration.

## Production Scenario 3

Application Logs Missing

Root Cause:

CloudWatch Agent failure.

Solution:

Restart agent.

## Production Scenario 4

Unexpected AWS Costs

Root Cause:

Excessive log retention.

Solution:

Configure lifecycle policies.

## Production Scenario 5

Dashboard Does Not Update

Root Cause:

Metric collection failure.

Solution:

Verify CloudWatch metric ingestion pipeline.
