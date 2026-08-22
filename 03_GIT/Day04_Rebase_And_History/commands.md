# Day 04 - Rebase And History Commands

## View History

git log --oneline

Screenshot:

01_git_history.png

## Create Feature Branch

git checkout -b feature-api

Screenshot:

02_feature_branch.png

## Rebase Onto Main

git rebase main

Screenshot:

03_git_rebase.png

## Interactive Rebase

git rebase -i HEAD~3

Screenshot:

04_interactive_rebase.png

## Squash Commits

During interactive rebase:

pick

squash

Screenshot:

05_squash_commits.png

## Cherry Pick Commit

git cherry-pick COMMIT_ID

Screenshot:

06_cherry_pick.png

## View Reflog

git reflog

Screenshot:

07_git_reflog.png

## Soft Reset

git reset --soft HEAD~1

Screenshot:

08_soft_reset.png

## Mixed Reset

git reset HEAD~1

Screenshot:

09_mixed_reset.png

## Hard Reset

git reset --hard HEAD~1

Screenshot:

10_hard_reset.png

## Restore File

git restore README.md

Screenshot:

11_git_restore.png

## Graph View

git log --oneline --graph --decorate --all

Screenshot:

12_graph_history.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
