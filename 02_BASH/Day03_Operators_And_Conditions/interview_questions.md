# Day 03 - Interview Questions

## Basic

### Q1 What is an Operator?

Operator performs calculations or comparisons.

### Q2 Difference between if and if-else?

if:

Runs only when condition true.

if-else:

Provides alternative execution.

## Intermediate

### Q1 Difference between:

-eq

and

=

Answer:

-eq

Numeric comparison.

=

String comparison.

### Q2 What is Exit Status?

Answer:

0 = Success

Non-Zero = Failure

## Advanced (5+ Years)

### Q1 Why should DevOps scripts validate input?

Answer:

Prevent:

- Wrong Deployments

- Invalid Environments

- Configuration Errors

- Production Outages

### Q2 A Production Deploy Ran Against PROD Instead Of DEV. What Failed?

Answer:

Possible Root Causes:

- Environment Validation Missing

- Incorrect Conditional Logic

- Hardcoded Values

- Lack Of Approval Logic

### Q3 How would you make deployment decisions safer?

Answer:

Input Validation

Environment Verification

User Validation

Approval Gates

Rollback Capability

Audit Logging

### Q4 Explain use of Exit Codes in CI/CD.

Answer:

Jenkins pipelines use exit codes.

0 = Success

Non-Zero = Failure

Pipeline decisions often depend on exit status.
