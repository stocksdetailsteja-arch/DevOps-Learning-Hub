# Git Troubleshooting Cheatsheet

## Git Push Rejected

Check:

git fetch

git pull

Resolve:

Remote changes exist.

## Merge Conflict

Check:

git status

Open file

Resolve conflict

git add .

git commit

## Accidentally Deleted Commit

Recover:

git reflog

git checkout

git cherry-pick

## Wrong Commit In Main

Use:

git revert <commit-id>

Avoid:

git reset --hard

Production Branch

## Detached HEAD

Check:

git status

Fix:

git switch main

## Pull Fails

Check:

- Internet
- Authentication
- Permissions

## Branch Divergence

Check:

git fetch

git log --graph

## Cannot Push

Check:

git remote -v

Verify:

- Repository URL
- Permissions
- Authentication

## Accidentally Committed Secrets

Actions:

- Revoke Secret
- Rotate Secret
- Remove Secret
- Audit Access

## Lost Local Changes

Check:

git stash

git reflog

## Recovery Checklist

- Reflog
- Branches
- Tags
- Backup Branch
- Repository History

## Production Recovery

Preferred:

git revert

Avoid:

git reset --hard

on shared branches.
