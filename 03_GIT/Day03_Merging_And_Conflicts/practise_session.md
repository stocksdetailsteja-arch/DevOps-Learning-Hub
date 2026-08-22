# Day 03 - Merging And Conflicts Practice Session

## Lab Setup

mkdir Day03_Merging_And_Conflicts_Lab

cd Day03_Merging_And_Conflicts_Lab

git init

echo "Version 1" > app.txt

git add .

git commit -m "Initial Commit"

## Lab 1

Create Feature Branch

git checkout -b feature-login

Screenshot:

01_create_feature_branch.png

## Lab 2

Modify File

echo "Feature Login" >> app.txt

git add .

git commit -m "Feature Commit"

Screenshot:

02_feature_commit.png

## Lab 3

Switch Main

git checkout main

Screenshot:

03_switch_main.png

## Lab 4

Merge Feature Branch

git merge feature-login

Screenshot:

04_merge_feature.png

## Lab 5

View Graph

git log --oneline --graph --decorate --all

Screenshot:

05_graph_view.png

## Lab 6

Create Conflict

Change same line in:

main

feature

Screenshot:

06_conflict_creation.png

## Lab 7

Resolve Conflict

Remove markers.

Commit.

Screenshot:

07_conflict_resolution.png

## Lab 8

Validate Final History

Screenshot:

08_final_history.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
