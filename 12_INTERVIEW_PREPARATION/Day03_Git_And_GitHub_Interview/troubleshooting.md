# Troubleshooting

## Scenario 1

Git Push Rejected

Check:

git status

git fetch

git pull

Possible Cause:

Branch behind remote.

## Scenario 2

Merge Conflict

Check:

git status

Resolve:

- Open File
- Fix Conflict
- Add File
- Commit

## Scenario 3

Accidentally Deleted Commit

Recover:

git reflog

git checkout

git cherry-pick

## Scenario 4

Wrong Commit In Main Branch

Solution:

git revert

Avoid:

git reset --hard

Production Environment

## Scenario 5

Detached HEAD

Check:

git status

Fix:

git switch main

## Scenario 6

Branch Divergence

Check:

git fetch

git log --graph

Analyze History

## Scenario 7

Large File Committed

Check:

git log

git status

Use:

git rm

Rewrite History Carefully

## Scenario 8

Secrets Pushed To Repository

Actions:

- Revoke Secret
- Rotate Secret
- Remove Secret
- Audit Access

Your internal Git workbook explicitly advises never committing tokens or private keys and recommends secret stores and credential helpers. 【1-2b2acc】【2-f900cf】

## Production Incident

Issue:

Deployment Failed After Merge

Investigation:

- Commit History
- Pull Request
- Pipeline Results
- Recent Changes

Root Cause:

Incorrect merge introduced faulty configuration.

Resolution:

git revert

Pipeline Re-execution

Validation:

Successful deployment
