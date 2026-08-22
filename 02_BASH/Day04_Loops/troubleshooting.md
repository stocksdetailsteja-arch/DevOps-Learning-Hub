# Day 04 - Troubleshooting

## Scenario 1

Loop Never Stops

Cause:

Condition never becomes false.

Resolution:

Verify loop exit condition.

## Scenario 2

Infinite Loop Consumes CPU

Investigation:

top

ps -ef

Resolution:

Kill process and fix condition.

## Scenario 3

Variables Not Updating

Cause:

Counter increment missing.

Resolution:

Verify arithmetic logic.

## Scenario 4

Loop Skips Entries

Cause:

Incorrect variable handling.

Resolution:

Quote variables correctly.

## Scenario 5 (5+ Years)

Automation Executed Against Wrong Servers

Investigation:

Validate Server List

Validate Inputs

Add Logging

Add Dry Run Mode

Resolution:

Implement verification step before execution.

## Scenario 6 (5+ Years)

Deployment Loop Failed Midway

Investigation:

- Capture Exit Codes

- Identify Failed Server

- Implement Retry Logic

- Maintain Execution Logs

Resolution:

Resume safely from failed point.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
