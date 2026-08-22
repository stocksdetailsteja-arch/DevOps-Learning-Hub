# Day 02 - Git Branches Interview Questions

## Basic

### Q1 What Is A Git Branch?

A Git branch is an independent line of development.

### Q2 Why Use Branches?

To develop features without affecting the main codebase.

### Q3 What Is HEAD?

HEAD is a pointer to the currently checked-out branch.

## Intermediate

### Q1 Difference Between git checkout and git switch?

git checkout:

Older command.

Can switch branches and restore files.

git switch:

Newer command.

Designed specifically for branch switching.

### Q2 How Do You Delete A Branch?

git branch -d branch_name

## Advanced (5+ Years)

### Q1 Why Should Developers Avoid Working Directly On Main?

Answer:

Risks:

- Accidental Breakages

- Unreviewed Changes

- Deployment Issues

Feature branches reduce risk.

### Q2 Explain Feature Branch Workflow.

Answer:

Main Branch

↓

Feature Branch

↓

Development

↓

Testing

↓

Merge

↓

Delete Branch

### Q3 What Branch Strategy Have You Used?

Answer:

Common Strategies:

- Git Flow

- Feature Branch Strategy

- Trunk Based Development

Most DevOps teams use feature branches integrated through Pull Requests.

### Q4 What Happens Internally When Switching Branches?

Answer:

Git updates:

- HEAD

- Working Directory

- File Versions

to match selected branch state.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
