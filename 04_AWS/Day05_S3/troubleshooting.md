# Day 05 - S3 Troubleshooting

## Scenario 1

Access Denied

Cause:

Bucket Policy

IAM Policy

Resolution:

Review permissions.

## Scenario 2

Upload Failed

Cause:

Missing Permissions

Resolution:

Review IAM Policy.

## Scenario 3

Bucket Already Exists

Cause:

Bucket names are globally unique.

Resolution:

Choose unique bucket name.

## Scenario 4

Versioning Not Working

Cause:

Versioning disabled.

Resolution:

Enable Versioning.

## Scenario 5 (5+ Years)

Terraform State Lost

Investigation:

- Versioning

- Bucket Access

- Backup Procedures

Resolution:

Restore previous version.

## Scenario 6 (5+ Years)

Large Storage Bill

Investigation:

- Old Objects

- Lifecycle Policies

- Storage Classes

Resolution:

Move old data to archival classes.

## Scenario 7 (5+ Years)

Static Website Not Accessible

Investigation:

- Website Hosting Enabled

- Bucket Policy

- Public Access Settings

Resolution:

Review configuration carefully.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
