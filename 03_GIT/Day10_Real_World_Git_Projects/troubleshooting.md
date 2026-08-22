# Day 10 - Real World Git Projects Troubleshooting

## Scenario 1

Jenkins Build Not Triggered

Investigation:

- Webhook

- Branch Filter

- Jenkins Logs

Resolution:

Fix integration settings.

## Scenario 2

Release Tag Missing

Cause:

Tag not pushed.

Resolution:

git push origin --tags

## Scenario 3

Wrong Code Released

Investigation:

- Tag

- Branch

- Commit History

Resolution:

Rollback using previous release tag.

## Scenario 4

GitOps Deployment Not Updating

Investigation:

- Git Commit

- Sync Status

- ArgoCD Configuration

Resolution:

Resync deployment.

## Scenario 5 (5+ Years)

Production Release Failed

Investigation:

- Release Tag

- Jenkins Pipeline

- Deployment Logs

- Application Logs

Resolution:

Rollback and perform RCA.

## Scenario 6 (5+ Years)

Hotfix Needed Immediately

Workflow:

hotfix/security-fix

↓

Review

↓

Merge

↓

Release Tag

↓

Deploy

Resolution:

Follow emergency release process.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
