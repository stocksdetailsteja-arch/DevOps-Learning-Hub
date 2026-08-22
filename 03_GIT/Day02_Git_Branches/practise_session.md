# Day 02 - Git Branches Practice Session

## Lab Setup

mkdir Day02_Git_Branches_Lab

cd Day02_Git_Branches_Lab

git init

echo "Git Branches" > README.md

git add .

git commit -m "Initial Commit"

## Lab 1

List Branches

git branch

Screenshot:

01_list_branches.png

## Lab 2

Check Current Branch

git branch --show-current

Screenshot:

02_current_branch.png

## Lab 3

Create Branch

git branch feature-login

Screenshot:

03_create_branch.png

## Lab 4

Switch Branch

git checkout feature-login

Screenshot:

04_checkout_branch.png

## Lab 5

Create And Switch

git checkout -b feature-payment

Screenshot:

05_create_and_switch.png

## Lab 6

Create Another Branch

git switch -c feature-api

Screenshot:

06_feature_api.png

## Lab 7

View All Branches

git branch

Screenshot:

07_all_branches.png

## Lab 8

Verify Branch History

git branch -v

Screenshot:

08_branch_history.png

## Lab 9

Delete Branch

git switch main

git branch -d feature-login

Screenshot:

09_delete_branch.png

## Lab 10

Graph View

git log --oneline --decorate --graph --all

Screenshot:

10_branch_graph.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
