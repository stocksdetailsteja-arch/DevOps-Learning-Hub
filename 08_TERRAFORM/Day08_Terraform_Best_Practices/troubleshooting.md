# Day 08 - Terraform Best Practices Troubleshooting

## Scenario 1

State File Accidentally Committed

Cause:

Missing .gitignore

Resolution:

Remove State From Repository.

## Scenario 2

Infrastructure Not Reusable

Cause:

Hardcoded Values

Resolution:

Use Variables.

## Scenario 3

Code Duplication

Cause:

No Modules

Resolution:

Refactor Into Modules.

## Scenario 4

Secrets Exposed

Cause:

Secrets Stored In Code

Resolution:

Use Secrets Manager.

## Scenario 5 (5+ Years)

Large Terraform Repository Difficult To Maintain

Investigation:

- Folder Structure

- Module Design

Resolution:

Refactor Repository.

## Scenario 6 (5+ Years)

Environment Drift

Investigation:

- Environment Variables

- tfvars Files

Resolution:

Review Environment Separation.

## Scenario 7 (5+ Years)

Production Infrastructure Misconfiguration

Investigation:

- Code Reviews

- Pipeline Validation

- Terraform Plan

Resolution:

Strengthen Deployment Processes.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
