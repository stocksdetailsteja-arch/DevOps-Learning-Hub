# Day 09 - Terraform Project Troubleshooting

## Scenario 1

VPC Creation Failed

Cause:

CIDR Conflict

Resolution:

Review CIDR Range.

## Scenario 2

EC2 Not Accessible

Cause:

Security Group Configuration

Resolution:

Review Inbound Rules.

## Scenario 3

terraform apply Failed

Cause:

Permission Issue

Resolution:

Review IAM Access.

## Scenario 4

Output Not Displayed

Cause:

Missing Output Block

Resolution:

Review outputs.tf

## Scenario 5 (5+ Years)

Infrastructure Deployed But Application Unreachable

Investigation:

- Network

- Security Groups

- Route Tables

- EC2 Status

Resolution:

Validate Complete Network Path.

## Scenario 6 (5+ Years)

State Lock Failures

Investigation:

- DynamoDB Lock

- Backend Access

Resolution:

Review Backend Configuration.

## Scenario 7 (5+ Years)

Production Infrastructure Drift

Investigation:

- Terraform State

- AWS Resources

Resolution:

Reconcile Configuration.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
