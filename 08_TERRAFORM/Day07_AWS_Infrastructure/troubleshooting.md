# Day 07 - AWS Infrastructure Troubleshooting

## Scenario 1

EC2 Creation Failed

Cause:

Invalid AMI

Resolution:

Verify AMI ID.

## Scenario 2

Access Denied

Cause:

IAM Permission Issue

Resolution:

Review IAM Policies.

## Scenario 3

Cannot SSH To EC2

Cause:

Security Group Configuration

Resolution:

Allow Port 22.

## Scenario 4

S3 Bucket Creation Failed

Cause:

Bucket Name Conflict

Resolution:

Use Globally Unique Name.

## Scenario 5 (5+ Years)

Infrastructure Created In Wrong Region

Investigation:

- Provider Configuration

- Variable Values

Resolution:

Review Region Settings.

## Scenario 6 (5+ Years)

Terraform Apply Timeout

Investigation:

- AWS APIs

- Resource Dependencies

- Network Connectivity

Resolution:

Review Logs And AWS Console.

## Scenario 7 (5+ Years)

Production Server Not Reachable

Investigation:

- Security Groups

- Route Tables

- Internet Gateway

- NACLs

Resolution:

Validate End-To-End Network Path.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
