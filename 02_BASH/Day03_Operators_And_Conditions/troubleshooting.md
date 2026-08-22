# Day 03 - Troubleshooting

## Scenario 1

Script Always Enters Else Block

Cause:

Wrong Comparison Operator.

Resolution:

Use proper string or numeric comparison.

## Scenario 2

Unexpected Condition Result

Cause:

Variable Empty.

Resolution:

Validate Input.

## Scenario 3

File Validation Fails

Cause:

Wrong Path.

Resolution:

Use Absolute Path.

## Scenario 4

Jenkins Stage Skipped Unexpectedly

Cause:

Conditional Expression Failed.

Investigation:

- Pipeline Variables

- Environment Variables

- Exit Status

Resolution:

Correct Logic.

## Scenario 5 (5+ Years)

Production Deployment Triggered Incorrectly

Investigation:

Review Conditions

Verify Environment

Verify User

Review Audit Logs

Compare Expected vs Actual Inputs

Resolution:

Add Validation Gates.

## Scenario 6 (5+ Years)

Health Check Script Always Reports Healthy

Cause:

Exit Status Not Validated.

Resolution:

Capture and verify command result.

Example:

STATUS=$?

if [ "$STATUS" -eq 0 ]

then

echo "Healthy"

fi
