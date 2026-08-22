# Day 05 - Remote Repositories Concepts

## What Is A Remote Repository?

A remote repository is a Git repository hosted on a server.

Examples:

- GitHub

- GitLab

- Bitbucket

- Azure Repos

## Why Use Remote Repositories?

Benefits:

- Collaboration

- Backup

- Code Sharing

- CI/CD Integration

- Version Management

## Local vs Remote Repository

Local Repository:

Stored on developer machine.

Remote Repository:

Stored on centralized platform.

## What Is Origin?

By convention:

origin

refers to the primary remote repository.

Example:

origin → GitHub Repository

## Push Workflow

Local Commit

↓

git push

↓

Remote Repository Updated

## Pull Workflow

Remote Changes

↓

git pull

↓

Local Repository Updated

## Fetch Workflow

Remote Changes

↓

git fetch

↓

Download Only

↓

No Automatic Merge

## Upstream Branch

Tracks a remote branch.

Example:

local devops

↓

origin/devops

## Authentication Methods

SSH

Advantages:

- Secure

- No password every push

HTTPS

Advantages:

- Easy setup

## Real World DevOps Example

Developer Pushes Code

↓

GitHub

↓

Jenkins Detects Change

↓

Build Triggered

↓

Deployment Starts

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
