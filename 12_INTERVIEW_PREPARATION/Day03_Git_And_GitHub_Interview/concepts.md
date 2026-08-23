# Git Concepts

## Git Architecture

Working Directory

↓

Staging Area

↓

Local Repository

↓

Remote Repository

## Working Directory

Current files being modified.

## Staging Area

Stores changes before commit.

Command:

git add

## Repository

Stores commit history.

## Commit

Snapshot of changes.

Each commit has a unique hash.

## Branch

Independent line of development.

Examples:

- main
- develop
- feature-login

## Merge

Combines branches.

## Rebase

Moves commits on top of another branch.

Produces cleaner history.

## Tag

Marks release versions.

Examples:

v1.0

v2.0

## Stash

Temporarily stores unfinished changes.

## Reset

Moves HEAD pointer.

Can rewrite history.

## Revert

Creates reverse commit.

Safe for shared branches.

## HEAD

Pointer to active commit.

## Detached HEAD

HEAD points directly to commit instead of branch. 【3-a94096】

## Pull Request

Used for:

- Code Review
- Approval
- Merge Validation

## Protected Branch

Prevents:

- Direct Push
- Force Push
- Unreviewed Changes

## Git Flow

Feature

↓

Pull Request

↓

Review

↓

Merge

↓

Release

↓

Production
