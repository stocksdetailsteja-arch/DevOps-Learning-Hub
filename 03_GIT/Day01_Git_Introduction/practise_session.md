# Day 01 - Git Introduction Practice Session

## Lab Setup

mkdir -p ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day01_Git_Introduction_Lab

cd ~/DEVOPS/DevOps-Learning-Hub/PRACTISE_SESSION/Day01_Git_Introduction_Lab

## Lab 1

Verify Git Installation

git --version

Screenshot:

01_git_version.png

## Lab 2

Configure Username

git config --global user.name "Teja"

Screenshot:

02_git_username.png

## Lab 3

Configure Email

git config --global user.email "stocksdetailsteja@gmail.com"

Screenshot:

03_git_email.png

## Lab 4

Create Repository

git init

Screenshot:

04_git_init.png

## Lab 5

Check Status

git status

Screenshot:

05_git_status.png

## Lab 6

Create README

echo "Git Learning" > README.md

Screenshot:

06_readme_creation.png

## Lab 7

Stage File

git add README.md

Screenshot:

07_git_add.png

## Lab 8

Commit File

git commit -m "Initial Commit"

Screenshot:

08_git_commit.png

## Lab 9

View History

git log

Screenshot:

09_git_log.png

## Lab 10

Short Log

git log --oneline

Screenshot:

10_git_log_oneline.png

## Lab 11

Create Second Commit

echo "Version Control" >> README.md

git add .

git commit -m "Second Commit"

git log --oneline

Screenshot:

11_second_commit.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
