# Day 05 - Terraform Modules Troubleshooting

## Scenario 1

Module Not Found

Cause:

Incorrect Module Path

Resolution:

Verify Source Path.

## Scenario 2

Variable Not Passed To Module

Cause:

Missing Input

Resolution:

Review Module Call.

## Scenario 3

Output Not Available

Cause:

Missing Output Definition

Resolution:

Review outputs.tf

## Scenario 4

terraform init Failed

Cause:

Module Download Failure

Resolution:

Verify Repository Access.

## Scenario 5 (5+ Years)

Module Works In Dev But Fails In Prod

Investigation:

- Variables

- Permissions

- Environment Differences

Resolution:

Compare Configurations.

## Scenario 6 (5+ Years)

Infrastructure Duplication

Investigation:

- Module Structure

- Code Reuse Strategy

Resolution:

Adopt Reusable Modules.

## Scenario 7 (5+ Years)

Large Terraform Repository Difficult To Maintain

Investigation:

- Directory Structure

- Module Design

Resolution:

Refactor Into Smaller Modules.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
