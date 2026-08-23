# Day 03 - Variables & Outputs Troubleshooting

## Scenario 1

Variable Not Defined

Cause:

Missing Variable Declaration

Resolution:

Review variables.tf

## Scenario 2

Missing tfvars Value

Cause:

Value Not Supplied

Resolution:

Review terraform.tfvars

## Scenario 3

Output Not Displayed

Cause:

Output Block Missing

Resolution:

Review outputs.tf

## Scenario 4

Sensitive Value Exposed

Cause:

Sensitive Flag Missing

Resolution:

Use sensitive = true

## Scenario 5 (5+ Years)

Wrong Environment Created

Investigation:

- tfvars File

- Pipeline Parameters

Resolution:

Verify Variable Mapping.

## Scenario 6 (5+ Years)

CI/CD Variable Failure

Investigation:

- Variable Names

- Secret Stores

- Pipeline Configuration

Resolution:

Review Pipeline Variables.

## Scenario 7 (5+ Years)

Infrastructure Using Unexpected Values

Investigation:

- Default Values

- tfvars

- Command Line Variables

Resolution:

Review Variable Precedence.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
