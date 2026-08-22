# Day 04 - EBS And AMI Troubleshooting

## Scenario 1

Volume Not Visible In Linux

Cause:

Device not mounted.

Resolution:

Check:

lsblk

fdisk -l

## Scenario 2

Snapshot Failed

Cause:

Permission issue.

Resolution:

Review IAM permissions.

## Scenario 3

AMI Creation Stuck

Cause:

Large volume or pending operations.

Resolution:

Wait and monitor progress.

## Scenario 4

Instance Fails After AMI Launch

Cause:

Incorrect configuration.

Resolution:

Validate source instance before creating AMI.

## Scenario 5 (5+ Years)

Production Disk Full

Investigation:

- Disk Usage

- Log Files

- Volume Size

Resolution:

Expand volume and filesystem.

## Scenario 6 (5+ Years)

Recovery Server Missing Data

Investigation:

- Snapshot Used

- Mount Points

- Application Data Location

Resolution:

Restore correct snapshot.

## Scenario 7 (5+ Years)

Unexpected AWS Charges

Investigation:

- Unused EBS Volumes

- Old Snapshots

- Forgotten Test Resources

Resolution:

Cleanup unused storage.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
