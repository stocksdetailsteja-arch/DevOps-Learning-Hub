i# Day 09 - Error Handling Concepts

## What Is Error Handling?

Error Handling means identifying failures and responding appropriately.

Without Error Handling:

- Scripts fail silently

- Data corruption is possible

- Production outages increase

## Exit Codes

Linux commands return exit codes.

Common meanings:

- 0 = Success

- Non-Zero = Failure

Example:

pwd

echo $?

Output:

0

## Why Exit Codes Matter?

CI/CD tools depend on them.

Examples:

- Jenkins

- GitHub Actions

- GitLab CI

- Azure DevOps

## Fail Fast Principle

Stop execution immediately when a critical step fails.

Benefits:

- Faster troubleshooting

- Reduced damage

- Better reliability

## Logging

Production scripts should generate logs.

Benefits:

- Auditing

- Troubleshooting

- RCA

## Retry Logic

Temporary issues often resolve automatically.

Examples:

- Network Errors

- API Failures

- Repository Timeout

## Trap Handling

Trap captures signals and unexpected script exits.

Example:

trap "echo Script Failed" ERR

## Real World Example

Deployment Script:

Download Artifact

↓

Validate Download

↓

Deploy

↓

Verify Deployment

↓

Rollback If Necessary

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
