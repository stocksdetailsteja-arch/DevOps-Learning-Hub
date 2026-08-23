# Git And GitHub Interview Questions

## Beginner Questions

### What Is Git?

Git is a distributed version control system.

### What Is GitHub?

GitHub is a platform for hosting Git repositories.

### Difference Between Git And GitHub?

Git:

Version control system.

GitHub:

Repository hosting platform.

### What Is A Commit?

Snapshot of code changes.

### What Is A Branch?

Independent line of development.

### Why Use Branches?

To isolate development work. 【4-640a99】

## Intermediate Questions

### What Is HEAD?

Pointer to current commit or branch. 【3-a94096】

### What Is Detached HEAD?

HEAD points directly to commit instead of branch. 【3-a94096】

### What Is Rebase?

Reapplying commits on top of another branch. 【3-a94096】

### What Is Cherry Pick?

Copying a specific commit to another branch. 【3-a94096】

### Difference Between Merge And Rebase?

Merge:

Preserves history.

Rebase:

Creates cleaner linear history.

### Difference Between Reset And Revert?

Reset rewrites history.

Revert creates opposite commit. 【3-a94096】

### What Is Stash?

Temporary storage of uncommitted changes. 【3-a94096】

## Advanced Questions (5+ Years)

### Git Pull Failed During Release. What Would You Check?

Investigation:

- Current Branch
- Remote Status
- Merge Conflicts
- Diverging Commits
- Permissions

### A Developer Accidentally Deleted Important Code. How Would You Recover?

Options:

- git reflog
- git revert
- git checkout
- restore previous tag

### Explain GitFlow Strategy.

main

↓

develop

↓

feature

↓

release

↓

production

### Why Are Protected Branches Important?

Prevent:

- Direct Pushes
- Accidental Deletions
- Unsafe Changes

### How Do You Handle Hotfixes In Production?

- Create Hotfix Branch
- Apply Fix
- Test
- Merge
- Tag Release
- Deploy

### Explain Recovery Strategy

Use:

- Tags
- Releases
- Revert
- Reflog
- Backup Branches

Your internal Git workbook recommends using revert for public history and tags/releases for known-good states. 【1-2b2acc】【2-f900cf】

## GitHub Questions

### What Is Pull Request?

Request to merge code after review.

### Why Use Pull Requests?

- Collaboration
- Review
- Quality Control

### What Is Branch Protection?

Protects important branches from unauthorized modifications.

### What Is Code Review?

Reviewing code before merge.

### What Is Repository Fork?

Copy of another repository.
