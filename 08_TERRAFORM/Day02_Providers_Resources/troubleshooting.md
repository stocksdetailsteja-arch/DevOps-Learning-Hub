# Day 02 - Providers & Resources Troubleshooting

## Scenario 1

Provider Not Found

Cause:

Missing Provider Configuration

Resolution:

Review Provider Block.

## Scenario 2

terraform init Failed

Cause:

Provider Download Failure

Resolution:

Verify Network Access.

## Scenario 3

terraform plan Failed

Cause:

Invalid Configuration

Resolution:

Run terraform validate.

## Scenario 4

Access Denied

Cause:

IAM Permission Issue

Resolution:

Review AWS Credentials.

## Scenario 5 (5+ Years)

Infrastructure Created In Wrong Region

Investigation:

- Provider Configuration

- AWS Region

Resolution:

Correct Provider Configuration.

## Scenario 6 (5+ Years)

terraform apply Failed

Investigation:

- API Errors

- Resource Limits

- Permissions

Resolution:

Review Error Output.

## Scenario 7 (5+ Years)

Unexpected Infrastructure Changes

Investigation:

- Configuration Drift

- Terraform Plan

- State File

Resolution:

Review Plan Carefully Before Apply.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
