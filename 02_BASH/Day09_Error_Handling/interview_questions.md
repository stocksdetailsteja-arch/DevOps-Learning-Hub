# Day 09 - Interview Questions

## Basic

### Q1 What is Exit Status?

A numeric value returned by a command.

0 = Success

Non-Zero = Failure

### Q2 Why is Logging Important?

Logging helps troubleshooting and auditing.

## Intermediate

### Q1 What does 2> mean?

Redirect standard error.

### Q2 What does set -e do?

Stops script execution when any command fails.

## Advanced (5+ Years)

### Q1 Why is Error Handling Critical in DevOps?

Answer:

Without proper handling:

- Silent failures occur

- Deployments become risky

- Recovery becomes difficult

### Q2 How Would You Design A Production Deployment Script?

Answer:

Validate Inputs

Validate Artifact

Validate Disk

Validate Service

Deploy

Verify

Rollback If Needed

### Q3 Explain Retry Logic.

Answer:

Retry handles temporary failures.

Examples:

- Network Timeout

- API Timeout

- Repository Access Failure

Retries should have:

- Limit

- Delay

- Logging

### Q4 Explain Trap Usage.

Answer:

Trap captures errors or signals.

Used for:

- Cleanup

- Notifications

- Logging

- Recovery

### Q5 A Jenkins Build Suddenly Failed. How Would You Investigate?

Answer:

Review Build Logs

Review Exit Codes

Identify Failed Step

Validate Credentials

Validate Environment

Retry Carefully

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
