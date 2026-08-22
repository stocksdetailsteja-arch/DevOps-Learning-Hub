i# Day 09 - Troubleshooting

## Scenario 1

Script Stops Unexpectedly

Cause:

Command Failure

Resolution:

Check Exit Status

## Scenario 2

Logs Not Generated

Cause:

Wrong Path

Resolution:

Validate Log File Location

## Scenario 3

Error Redirect Empty

Cause:

Command Successful

Resolution:

Verify Failure Scenario

## Scenario 4

Retry Loop Never Ends

Cause:

Limit Missing

Resolution:

Add Maximum Retry Count

## Scenario 5 (5+ Years)

Deployment Failed Midway

Investigation:

- Deployment Logs

- Exit Code

- Artifact Validation

- Service State

Resolution:

Rollback Deployment.

## Scenario 6 (5+ Years)

Automation Succeeded But Service Unavailable

Investigation:

- Service Logs

- Application Logs

- Health Checks

- Network Connectivity

Resolution:

Perform RCA and validation.

## Scenario 7 (5+ Years)

Script Corrupted Production Data

Root Cause:

Validation Missing

Resolution:

Add:

- Input Validation

- Confirmation Checks

- Backup

- Rollback

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
