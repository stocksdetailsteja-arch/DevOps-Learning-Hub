# Day 03 - Merging And Conflicts Commands

## Create Repository

git init

Screenshot:

01_git_init.png

## Create Feature Branch

git checkout -b feature-login

Screenshot:

02_create_branch.png

## Switch To Main

git checkout main

Screenshot:

03_switch_main.png

## Merge Branch

git merge feature-login

Screenshot:

04_git_merge.png

## Fast Forward Merge Example

Create feature branch.

Commit changes.

Merge back.

Screenshot:

05_fast_forward_merge.png

## Three Way Merge Example

Create commits on:

main

feature

Merge:

git merge feature-login

Screenshot:

06_three_way_merge.png

## View Commit Graph

git log --oneline --graph --decorate --all

Screenshot:

07_commit_graph.png

## Simulate Conflict

Modify same file in:

main

feature branch

Merge.

Screenshot:

08_merge_conflict.png

## Resolve Conflict

Edit file.

Remove markers.

Save.

git add .

git commit

Screenshot:

09_conflict_resolution.png

## Verify History

git log --oneline --graph --all

Screenshot:

10_final_history.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
