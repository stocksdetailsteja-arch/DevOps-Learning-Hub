# Day 05 - Remote Repositories Troubleshooting

## Scenario 1

Permission Denied (publickey)

Cause:

SSH key missing.

Resolution:

Verify SSH key configuration.

## Scenario 2

Remote Repository Not Found

Cause:

Wrong repository URL.

Resolution:

Verify remote URL.

## Scenario 3

Push Rejected

Cause:

Remote contains newer commits.

Resolution:

git pull

Then push again.

## Scenario 4

Authentication Failed

Cause:

Invalid credentials.

Resolution:

Reconfigure authentication.

## Scenario 5 (5+ Years)

Production Branch Accidentally Updated

Investigation:

- Commit History

- Push History

- Pull Requests

Resolution:

Rollback or revert commit.

## Scenario 6 (5+ Years)

CI/CD Pipeline Did Not Trigger

Investigation:

- GitHub Webhook

- Jenkins Configuration

- Branch Configuration

Resolution:

Correct webhook or pipeline settings.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
