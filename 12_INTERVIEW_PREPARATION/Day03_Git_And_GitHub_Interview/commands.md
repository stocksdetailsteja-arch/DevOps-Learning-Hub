# Git Commands

## Configure Git

git config --global user.name "Your Name"

git config --global user.email "you@example.com"

## Clone Repository

git clone <repository-url>

## Check Status

git status

## Add Files

git add file.txt

git add .

## Commit Changes

git commit -m "message"

## View History

git log

git log --oneline

git log --graph

## Branches

git branch

git branch feature-login

git switch feature-login

git switch -c feature-login

## Merge

git merge feature-login

## Rebase

git rebase main

## Stash

git stash

git stash list

git stash pop

## Tags

git tag v1.0

git push origin v1.0

## Remote

git remote -v

git fetch

git pull

git push

## Undo Commit

git revert <commit-id>

## Reset

git reset --soft HEAD~1

git reset --hard HEAD~1

## Inspect Changes

git diff

git show

git reflog
