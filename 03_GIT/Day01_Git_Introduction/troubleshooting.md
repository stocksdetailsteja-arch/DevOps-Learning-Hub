# Day 01 - Git Troubleshooting

## Scenario 1

git command not found

Cause:

Git not installed.

Resolution:

Install Git.

Verify:

git --version

## Scenario 2

Author Identity Unknown

Cause:

Username or email missing.

Resolution:

Configure:

git config --global user.name

git config --global user.email

## Scenario 3

Nothing To Commit

Cause:

No tracked changes.

Resolution:

Modify file before commit.

## Scenario 4

Repository Not Initialized

Cause:

git init not executed.

Resolution:

Initialize repository.

## Scenario 5 (5+ Years)

Commit History Missing

Investigation:

- Verify Repository

- Verify Branch

- Check git log

- Check Reflog

Resolution:

Recover using history.

## Scenario 6 (5+ Years)

Developer Deleted Local Changes

Investigation:

- Git History

- Reflog

- Commit Availability

Resolution:

Recover from repository snapshots.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
