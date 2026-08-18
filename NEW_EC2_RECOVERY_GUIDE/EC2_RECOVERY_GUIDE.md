# EC2 Recovery Guide

## Purpose

This guide explains how to rebuild the complete DevOps Learning Hub environment after creating a new EC2 instance.

## Step 1 - Connect To EC2

Verify:

pwd

Expected:

/home/ubuntu

## Step 2 - Update Ubuntu

Update package cache:

sudo apt update

Upgrade installed packages:

sudo apt upgrade -y

## Step 3 - Install Git

Install Git:

sudo apt install git -y

Verify:

git --version

## Step 4 - Configure Git

Configure username:

git config --global user.name "Teja"

Configure email:

git config --global user.email "stocksdetailsteja@gmail.com"

Verify:

git config --list

## Step 5 - Generate SSH Key

Generate SSH key:

ssh-keygen -t ed25519 -C "stocksdetailsteja@gmail.com"

Keep pressing Enter.

## Step 6 - Start SSH Agent

eval "$(ssh-agent -s)"

## Step 7 - Add SSH Key

ssh-add ~/.ssh/id_ed25519

## Step 8 - Display Public Key

cat ~/.ssh/id_ed25519.pub

Copy the complete output.

## Step 9 - Add SSH Key To GitHub

GitHub Navigation:

- Settings

- SSH and GPG Keys

- New SSH Key

- Paste Public Key

- Save

## Step 10 - Test GitHub Access

ssh -T git@github.com

Expected Output:

Hi stocksdetailsteja-arch! You've successfully authenticated...

## Step 11 - Create Workspace

mkdir -p ~/DEVOPS

cd ~/DEVOPS

## Step 12 - Clone Repository

git clone git@github.com:stocksdetailsteja-arch/DevOps-Learning-Hub.git

## Step 13 - Enter Repository

cd DevOps-Learning-Hub

## Step 14 - Switch To DevOps Branch

git checkout devops

## Step 15 - Verify Repository

pwd

Expected:

/home/ubuntu/DEVOPS/DevOps-Learning-Hub

## Step 16 - Verify Branch

git branch

Expected:

- devops

## Step 17 - Verify Repository Status

git status

Expected:

nothing to commit, working tree clean

## Step 18 - Verify Repository Structure

tree -L 1

Expected Structure:

- 00_GETTING_STARTED

- 01_LINUX

- 02_BASH

- 03_GIT

- 04_AWS

- 05_DOCKER

- 06_JENKINS

- 07_KUBERNETES

- 08_TERRAFORM

- 09_ANSIBLE

- 10_MONITORING

- 11_PROJECTS

- 12_INTERVIEW_PREPARATION

- 13_CHEATSHEETS

- README.md

- ROADMAP.md

- SETUP_GUIDE.md

- LEARNING_RULES.md

# Daily Git Workflow

## Check Status

git status

## Add Files

git add .

## Commit Files

git commit -m "Meaningful Commit Message"

## Push Changes

git push origin devops

## Pull Latest Changes

git pull origin devops

# EC2 Deleted?

No problem.

Repeat only:

Create EC2

Install Git

Configure Git

Generate SSH Key

Add SSH Key To GitHub

Clone Repository

Checkout devops Branch

Everything comes back from GitHub.

# Final Rule

## GitHub

- Permanent Storage

- Source of Truth

- Backup Repository

## EC2

- Temporary Lab Environment

- Safe To Terminate

- Easily Recreated

## Verification Before Termination

Run:

git status

Expected:

nothing to commit, working tree clean

If GitHub contains all your latest changes and Git status is clean, you are safe to terminate the EC2 instance anytime.

# Recovery Principles

- GitHub Stores The Knowledge

- EC2 Provides The Practice Environment

- Documentation Must Be Pushed Daily

- Never Terminate An EC2 With Uncommitted Work

- Always Verify Git Status Before Deletion

## Outcome

Following this guide guarantees that your complete DevOps Learning Hub can be restored on a brand-new EC2 instance within minutes. 🚀
