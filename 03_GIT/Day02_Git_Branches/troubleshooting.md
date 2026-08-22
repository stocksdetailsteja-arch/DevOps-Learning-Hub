# Day 02 - Git Branches Troubleshooting

## Scenario 1

Cannot Switch Branch

Error:

Uncommitted Changes

Cause:

Working directory contains modifications.

Resolution:

Commit or stash changes.

## Scenario 2

Branch Already Exists

Cause:

Duplicate branch creation.

Resolution:

Verify:

git branch

## Scenario 3

Cannot Delete Branch

Cause:

Branch not merged.

Resolution:

Use:

git branch -D branch_name

only if deletion is intended.

## Scenario 4

Wrong Branch Checked Out

Cause:

Developer switched incorrectly.

Resolution:

Verify:

git branch --show-current

## Scenario 5 (5+ Years)

Production Changes Made On Wrong Branch

Investigation:

- Commit History

- Branch History

- Reflog

Resolution:

Move commits to proper branch.

Open Pull Request.

## Scenario 6 (5+ Years)

Feature Work Lost After Branch Switch

Investigation:

- git status

- git log

- git reflog

Resolution:

Recover work from local history.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
