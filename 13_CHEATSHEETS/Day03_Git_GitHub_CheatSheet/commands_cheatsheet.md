# Git Commands Cheat Sheet

## Configure Git

git config --global user.name "Name"

git config --global user.email "email@example.com"

## Initialize Repository

git init

## Clone Repository

git clone <repo-url>

## Check Status

git status

## Add Files

git add file.txt

git add .

## Commit Changes

git commit -m "Initial Commit"

## View History

git log

git log --oneline

git log --graph

## Branch Operations

git branch

git branch feature-login

git switch feature-login

git switch -c feature-login

## Merge Branch

git merge feature-login

## Rebase Branch

git rebase main

## Fetch Latest Code

git fetch

## Pull Latest Code

git pull

## Push Changes

git push

## Stash

git stash

git stash list

git stash pop

## View Difference

git diff

## Revert Commit

git revert <commit-id>

## Reset Commit

git reset --soft HEAD~1

git reset --hard HEAD~1

## Cherry Pick

git cherry-pick <commit-id>

## Tags

git tag

git tag v1.0

git push origin v1.0

## Remote

git remote -v

## Reflog

git reflog
