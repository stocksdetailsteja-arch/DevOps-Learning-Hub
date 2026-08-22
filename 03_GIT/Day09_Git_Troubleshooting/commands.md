# Day 09 - Git Troubleshooting Commands

## View Reflog

git reflog

Screenshot:

01_git_reflog.png

## Create Stash

git stash

Screenshot:

02_git_stash.png

## View Stash List

git stash list

Screenshot:

03_stash_list.png

## Restore Stash

git stash pop

Screenshot:

04_stash_pop.png

## View Commit History

git log --oneline

Screenshot:

05_git_history.png

## Soft Reset

git reset --soft HEAD~1

Screenshot:

06_soft_reset.png

## Mixed Reset

git reset HEAD~1

Screenshot:

07_mixed_reset.png

## Hard Reset

git reset --hard HEAD~1

Screenshot:

08_hard_reset.png

## Revert Commit

git revert COMMIT_ID

Screenshot:

09_git_revert.png

## Recover Lost Commit

git reflog

git checkout COMMIT_ID

Screenshot:

10_commit_recovery.png

## Recover Deleted Branch

git reflog

git checkout -b recovered-branch COMMIT_ID

Screenshot:

11_branch_recovery.png

## Detached HEAD Recovery

git switch main

Screenshot:

12_detached_head_recovery.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
