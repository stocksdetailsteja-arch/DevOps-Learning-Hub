# DevOps Learning Hub - Setup Guide

## Purpose

This guide explains how to rebuild the complete DevOps learning environment from scratch.

It serves as a permanent recovery and environment setup guide.

---

## Prerequisites

Before starting, ensure you have:

- AWS Account
- GitHub Account
- EC2 Key Pair
- Internet Connectivity
- Git Installed

---

## Step 1 - Create EC2 Instance

1. Login to AWS Console
2. Navigate to EC2 Dashboard
3. Launch Instance
4. Choose Ubuntu Server
5. Select Instance Type
6. Create or Select Key Pair
7. Configure Security Group
8. Launch Instance

---

## Step 2 - Connect To EC2

### Using SSH

- ssh -i key.pem ubuntu@public-ip

### Using PuTTY

- Configure .ppk file
- Enter Public IP
- Connect as ubuntu user

---

## Step 3 - Update Server

- sudo apt update
- sudo apt upgrade -y

---

## Step 4 - Install Git

- sudo apt install git -y

### Verify Installation

- git --version

---

## Step 5 - Configure Git

- git config --global user.name "Teja"
- git config --global user.email "stocksdetailsteja@gmail.com"

### Verify Configuration

- git config --list

---

## Step 6 - Generate SSH Key

- ssh-keygen -t ed25519 -C "stocksdetailsteja@gmail.com"

Press Enter for all prompts.

### Verify

- ls ~/.ssh

Expected:

- id_ed25519
- id_ed25519.pub

---

## Step 7 - Start SSH Agent

- eval "$(ssh-agent -s)"

---

## Step 8 - Add SSH Key

- ssh-add ~/.ssh/id_ed25519

---

## Step 9 - Display Public Key

- cat ~/.ssh/id_ed25519.pub

Copy the complete output.

---

## Step 10 - Configure GitHub SSH

### GitHub Navigation

- Settings
- SSH and GPG Keys
- New SSH Key
- Paste Public Key
- Save

---

## Step 11 - Verify GitHub Access

- ssh -T git@github.com

### Expected Output

Successfully authenticated.

---

## Step 12 - Create DevOps Workspace

- mkdir -p ~/DEVOPS
- cd ~/DEVOPS

---

## Step 13 - Clone Repository

- git clone git@github.com:stocksdetailsteja-arch/DevOps-Learning-Hub.git

---

## Step 14 - Enter Repository

- cd DevOps-Learning-Hub

---

## Step 15 - Branch Strategy

### main

- Stable
- Reviewed
- Production Ready

### devops

- Learning Branch
- Practice Branch
- Daily Notes
- Labs
- Experiments

---

## Step 16 - Switch To Devops Branch

- git checkout devops

---

## Step 17 - Daily Git Workflow

### Check Status

- git status

### Add Changes

- git add .

### Commit Changes

- git commit -m "Meaningful Commit Message"

### Push Changes

- git push origin devops

### Pull Latest Changes

- git pull origin devops

---

## Step 18 - Recovery After EC2 Deletion

1. Create New EC2
2. Install Git
3. Configure Git
4. Generate SSH Key
5. Configure GitHub SSH
6. Clone Repository
7. Switch To Devops Branch
8. Continue Learning

---

## Step 19 - Common Troubleshooting

### Permission Denied (publickey)

#### Cause

- SSH Key Not Added To GitHub

#### Resolution

- Add Public Key To GitHub

### Repository Not Found

#### Cause

- Incorrect Repository URL

#### Resolution

- Verify Remote URL

### Working Tree Not Clean

#### Cause

- Uncommitted Changes

#### Resolution

- git status
- git add .
- git commit

---

## Step 20 - Useful Commands

- pwd
- ls -la
- tree
- git status
- git branch
- git log --oneline
- git remote -v

---

## Author

Akkana Tejaswar Sai

Senior Software Engineer

Java | AWS | DevOps Learning Journey
