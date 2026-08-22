# Day 04 - Rebase And History Concepts

## What Is Rebase?

Rebase moves commits from one branch and reapplies them on another branch.

Purpose:

- Cleaner History

- Linear History

- Easier Review

## Merge vs Rebase

Merge:

Creates Merge Commit.

Rebase:

Rewrites history to create a cleaner timeline.

## Rebase Flow

main

↓

feature branch

↓

git rebase main

↓

feature commits replayed on latest main

## Interactive Rebase

Allows:

- Squash Commits

- Edit Messages

- Reorder Commits

- Remove Commits

## Squash Commits

Combine multiple commits into a single commit.

Benefits:

- Cleaner History

- Easier Review

## Cherry Pick

Copies a specific commit from one branch to another.

Useful when:

Only one commit is required.

## Reflog

Tracks Git HEAD movements.

Used for recovery.

Example:

Recover deleted commits.

Recover detached HEAD.

## Reset

Moves branch pointer.

Types:

- Soft Reset

- Mixed Reset

- Hard Reset

## Restore

Restores files.

Safer than some reset operations.

## Real World Example

Developer made:

10 small commits

Before Pull Request:

Interactive Rebase

↓

Squash

↓

1 clean commit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
