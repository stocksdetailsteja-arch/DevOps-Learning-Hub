# Day 03 - EC2 Troubleshooting

## Scenario 1

SSH Connection Timeout

Cause:

Security Group Missing Port 22

Resolution:

Allow SSH Rule.

## Scenario 2

Permission Denied

Cause:

Wrong PEM Key

Resolution:

Use correct key pair.

## Scenario 3

Website Not Accessible

Cause:

Port 80 blocked.

Resolution:

Allow HTTP.

## Scenario 4

Instance Running But SSH Fails

Investigation:

- Security Group

- Route Table

- Public IP

- SSH Service

## Scenario 5 (5+ Years)

Jenkins Build Server Unreachable

Investigation:

- EC2 Health Checks

- CPU Usage

- Disk Usage

- Security Group

- Network Path

Resolution:

Restore service and investigate root cause.

## Scenario 6 (5+ Years)

Unexpected AWS Charges

Investigation:

- Running Instances

- Elastic IPs

- EBS Volumes

- Snapshots

Resolution:

Terminate unused resources.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
