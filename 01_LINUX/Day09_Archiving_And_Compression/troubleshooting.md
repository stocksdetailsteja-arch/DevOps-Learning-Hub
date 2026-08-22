# Day 09 Troubleshooting

## Scenario 1

tar: Cannot open

Cause:

Incorrect path.

Resolution:

Verify directory path.

## Scenario 2

No space left on device

Cause:

Disk full.

Resolution:

Check:

df -h

Clear old files.

## Scenario 3

gzip: file already exists

Cause:

Target file present.

Resolution:

Rename or remove target.

## Scenario 4

Archive Corruption

Symptoms:

Extraction fails.

Investigation:

- Verify checksum.

- Validate transfer.

- Compare archive size.

Resolution:

Restore from backup copy.

## Scenario 5 (Production)

Backup Job Failed Overnight

Investigation:

- Check cron logs.

- Check disk usage.

- Verify archive destination.

- Verify permissions.

Resolution:

Fix root cause and rerun backup.

## Scenario 6 (5+ Years)

Disaster Recovery Restore Failure

Investigation:

- Validate archive integrity.

- Verify backup age.

- Check file permissions.

- Verify extraction environment.

- Compare recovered files against source.

Resolution:

Restore from last known good backup.

Implement regular DR drills.
