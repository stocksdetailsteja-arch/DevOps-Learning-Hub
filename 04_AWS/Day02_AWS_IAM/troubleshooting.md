# Day 02 - AWS IAM Troubleshooting

## Scenario 1

Access Denied

Cause:

Missing Permissions

Resolution:

Review IAM Policies.

## Scenario 2

Cannot Assume Role

Cause:

Trust Policy Incorrect

Resolution:

Review role trust relationship.

## Scenario 3

User Cannot Access Console

Cause:

Console access disabled.

Resolution:

Create console credentials.

## Scenario 4

MFA Not Working

Cause:

Time synchronization issue.

Resolution:

Reconfigure MFA device.

## Scenario 5 (5+ Years)

Jenkins Cannot Access S3

Investigation:

- IAM Role

- Trust Policy

- S3 Permissions

- CloudTrail Logs

Resolution:

Correct IAM permissions.

## Scenario 6 (5+ Years)

Developer Received Administrator Access Accidentally

Investigation:

- Group Membership

- Attached Policies

- Permission Boundaries

Resolution:

Remove excessive permissions immediately.

## Scenario 7 (5+ Years)

Access Key Leaked To GitHub

Immediate Actions:

- Disable key

- Rotate credentials

- Review CloudTrail

- Follow security process

- Use roles going forward

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
