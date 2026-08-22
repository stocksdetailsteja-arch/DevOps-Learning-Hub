# Day 07 - Git Tags And Releases Troubleshooting

## Scenario 1

Tag Already Exists

Cause:

Duplicate tag creation.

Resolution:

Delete or rename tag.

## Scenario 2

Tag Not Visible In GitHub

Cause:

Tag not pushed.

Resolution:

git push origin --tags

## Scenario 3

Wrong Commit Tagged

Cause:

Incorrect commit selection.

Resolution:

Delete incorrect tag.

Create new correct tag.

## Scenario 4

Release Missing

Cause:

Tag created but GitHub release not created.

Resolution:

Create release manually.

## Scenario 5 (5+ Years)

Production Release Deploys Wrong Version

Investigation:

- Verify Tag

- Verify Pipeline

- Verify Artifact

Resolution:

Redeploy correct release tag.

## Scenario 6 (5+ Years)

Rollback Failed

Investigation:

- Verify Historical Tags

- Verify Artifact Availability

- Verify Deployment Script

Resolution:

Redeploy previous stable tag.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
