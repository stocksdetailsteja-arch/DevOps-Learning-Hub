# Day 05 - Troubleshooting

## Scenario 1

Function Not Found

Cause:

Function called before definition.

Resolution:

Define function before use.

## Scenario 2

Parameter Missing

Cause:

Function called without required arguments.

Resolution:

Validate parameters.

## Scenario 3

Unexpected Variable Value

Cause:

Global variable overwritten.

Resolution:

Use local variables.

## Scenario 4

Function Always Returns Success

Cause:

Return code not validated.

Resolution:

Check:

echo $?

## Scenario 5 (5+ Years)

Production Deployment Function Failed

Investigation:

- Validate Inputs

- Validate Environment

- Review Logs

- Check Return Codes

- Check Dependencies

Resolution:

Fix root cause and re-execute safely.

## Scenario 6 (5+ Years)

Health Check Script Reports False Results

Cause:

Function output not validated.

Resolution:

Verify command execution result and return status.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
