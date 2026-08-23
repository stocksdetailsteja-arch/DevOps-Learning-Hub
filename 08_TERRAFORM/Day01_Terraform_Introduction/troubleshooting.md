# Day 01 - Terraform Introduction Troubleshooting

## Scenario 1

terraform command not found

Cause:

Terraform Not Installed

Resolution:

Install Terraform And Verify PATH.

## Scenario 2

terraform init Failed

Cause:

Provider Download Issue

Resolution:

Verify Internet Connectivity.

## Scenario 3

terraform validate Failed

Cause:

Syntax Error

Resolution:

Review Configuration.

## Scenario 4

Provider Not Found

Cause:

Incorrect Provider Configuration

Resolution:

Review main.tf

## Scenario 5 (5+ Years)

CI/CD Pipeline Terraform Failure

Investigation:

- Credentials

- Providers

- Network

Resolution:

Review Pipeline Logs.

## Scenario 6 (5+ Years)

Environment Drift

Investigation:

- Terraform State

- Infrastructure Changes

Resolution:

Compare Desired And Actual State.

## Scenario 7 (5+ Years)

Infrastructure Provisioned Incorrectly

Investigation:

- Configuration

- Plan Output

- Variables

Resolution:

Review Terraform Plan Before Apply.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
