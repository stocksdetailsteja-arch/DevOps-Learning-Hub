# Day 08 - Troubleshooting

## Scenario 1

grep Returns No Output

Cause:

Case mismatch.

Resolution:

Use:

grep -i

## Scenario 2

awk Returns Wrong Column

Cause:

Incorrect field position.

Resolution:

Verify input format.

## Scenario 3

sed Modified Wrong Data

Cause:

Incorrect pattern.

Resolution:

Test command before applying changes.

## Scenario 4

tail -f Shows Nothing

Cause:

No new log entries.

Resolution:

Verify application logging.

## Scenario 5 (5+ Years)

Production Outage Investigation

Investigation:

tail logs

grep ERROR

Filter timestamps

Identify root cause

Correlate with deployment history

Resolution:

Apply fix.

Validate logs.

## Scenario 6 (5+ Years)

Log File 50GB In Size

Investigation:

Use:

grep

awk

head

tail

Avoid opening entire file.

Resolution:

Analyze incrementally.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
