# Day 01 - Git Introduction Concepts

## What Is Git?

Git is a Distributed Version Control System used to track changes in source code and files.

It allows developers to:

- Track changes

- Collaborate with teams

- Manage versions

- Recover previous code

## Why Git Was Created?

Before Git:

- File Versioning Problems

- Code Overwrites

- Collaboration Issues

Git solved these problems using version control.

## What Is Version Control?

Version Control is a system that records changes to files over time.

Benefits:

- Change Tracking

- Rollback

- Collaboration

- Audit History

## What Is A Repository?

A repository is a project storage location managed by Git.

Examples:

Local Repository

Remote Repository

## Git Architecture

Working Directory

↓

Staging Area

↓

Repository

## Working Directory

The place where files are created and modified.

Example:

README.md

app.java

script.sh

## Staging Area

Temporary area where changes are prepared before committing.

Command:

git add

## Commit

A commit is a snapshot of project changes.

Every commit has:

- Unique ID

- Author

- Timestamp

- Message

## Git Lifecycle

Create File

↓

Modify File

↓

git add

↓

git commit

↓

History Stored

## Local Repository

Repository stored on local machine.

Command:

git init

## Remote Repository

Repository stored on platforms like:

- GitHub

- GitLab

- Bitbucket

- Azure Repos

## Real World DevOps Example

Developer pushes code

↓

GitHub Repository

↓

Jenkins Pulls Code

↓

Build Created

↓

Deployment Triggered

Git is the starting point of most CI/CD pipelines.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
