# Day 04 - Rebase And History Troubleshooting

## Scenario 1

Rebase Conflict

Cause:

Conflicting changes.

Resolution:

Resolve files.

git add .

git rebase --continue

## Scenario 2

Lost Commit After Reset

Cause:

Hard reset executed.

Resolution:

git reflog

Recover commit.

## Scenario 3

Cherry Pick Failed

Cause:

Conflict in target branch.

Resolution:

Resolve conflict manually.

## Scenario 4

Restore Did Not Work

Cause:

File already committed.

Resolution:

Review commit history.

## Scenario 5 (5+ Years)

Production Fix Applied To Wrong Branch

Investigation:

- Commit History

- Branch History

- Reflog

Resolution:

Cherry-pick commit to correct branch.

## Scenario 6 (5+ Years)

Developer Lost Two Days Of Work

Investigation:

git reflog

Resolution:

Recover using recovered commit IDs.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
