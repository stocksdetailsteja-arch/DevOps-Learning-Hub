# Day 04 - Rebase And History Practice Session

## Lab Setup

mkdir Day04_Rebase_And_History_Lab

cd Day04_Rebase_And_History_Lab

git init

echo "Version 1" > app.txt

git add .

git commit -m "Initial Commit"

## Lab 1

Create Multiple Commits

Modify file multiple times.

Create 3 commits.

Screenshot:

01_multiple_commits.png

## Lab 2

View Commit History

git log --oneline

Screenshot:

02_git_history.png

## Lab 3

Interactive Rebase

git rebase -i HEAD~3

Screenshot:

03_interactive_rebase.png

## Lab 4

Squash Commits

Screenshot:

04_squash_result.png

## Lab 5

Create Feature Branch

git checkout -b feature-api

Screenshot:

05_feature_branch.png

## Lab 6

Rebase Feature Branch

git rebase main

Screenshot:

06_feature_rebase.png

## Lab 7

Cherry Pick Commit

git cherry-pick COMMIT_ID

Screenshot:

07_cherry_pick.png

## Lab 8

View Reflog

git reflog

Screenshot:

08_reflog.png

## Lab 9

Soft Reset

git reset --soft HEAD~1

Screenshot:

09_soft_reset.png

## Lab 10

Restore File

git restore app.txt

Screenshot:

10_restore_file.png

## Lab 11

Visualize History

git log --graph --oneline --all

Screenshot:

11_graph_view.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
