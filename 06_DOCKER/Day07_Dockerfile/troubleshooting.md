# Day 07 - Dockerfile Troubleshooting

## Scenario 1

Build Failed

Cause:

Dockerfile Syntax Error

Resolution:

Review Dockerfile.

## Scenario 2

COPY Failed

Cause:

Missing File

Resolution:

Validate Build Context.

## Scenario 3

Image Build Slow

Cause:

Large Context

Resolution:

Use Smaller Context.

## Scenario 4

Container Not Starting

Cause:

CMD Failure

Resolution:

Verify Startup Command.

## Scenario 5 (5+ Years)

Large Image Size

Investigation:

- Layers

- Packages

- Base Image

Resolution:

Optimize Dockerfile.

## Scenario 6 (5+ Years)

Security Vulnerabilities

Investigation:

- Base Image

- Dependencies

Resolution:

Update And Rebuild.

## Scenario 7 (5+ Years)

CI/CD Image Build Fails

Investigation:

- Dockerfile

- Build Agent

- Context

Resolution:

Validate Build Environment.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
