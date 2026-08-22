# Day 09 - Git Troubleshooting Scenarios

## Scenario 1

Hard Reset Removed Commits

Investigation:

git reflog

Resolution:

Recover commit and create new branch.

## Scenario 2

Detached HEAD

Cause:

Checkout commit directly.

Resolution:

Create branch or switch back.

## Scenario 3

Lost Stashed Changes

Investigation:

git stash list

Resolution:

Apply stash.

## Scenario 4

Wrong Commit Pushed

Resolution:

git revert

Create corrective commit.

## Scenario 5 (5+ Years)

Production Release Failed

Investigation:

- Merge History

- Release Tag

- Commit History

Resolution:

Rollback using revert or previous release tag.

## Scenario 6 (5+ Years)

Accidental Force Push

Investigation:

- Reflog

- Team History

- Remote State

Resolution:

Recover correct commit sequence.

## Scenario 7 (5+ Years)

Repository Appears Corrupted

Investigation:

git fsck

git reflog

Repository integrity review.

Resolution:

Recover from valid commit history.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
