# Day 03 - Merging And Conflicts Concepts

## What Is Merge?

Merge combines changes from one branch into another branch.

Example:

main

↓

feature-login

↓

Merge

↓

main contains feature changes

## Why Merge?

Benefits:

- Team Collaboration

- Feature Integration

- Release Preparation

- Code Consolidation

## Fast Forward Merge

Occurs when target branch has no new commits.

Git simply moves the pointer forward.

Example:

main

↓

feature

↓

main fast forwards to latest commit

## Three-Way Merge

Occurs when both branches contain different commits.

Git creates a merge commit.

## Merge Commit

A special commit generated during merge.

Purpose:

Record branch integration history.

## What Is A Merge Conflict?

A conflict occurs when Git cannot automatically determine which change should be kept.

Typical cause:

Same file

Same line

Different changes

## Conflict Example

main branch:

Application Version 1

feature branch:

Application Version 2

Git cannot decide automatically.

Manual intervention required.

## Conflict Markers

Git inserts:

<<<<<<< HEAD

main content

=======

feature content

feature

Developer must resolve.

## Real World DevOps Example

Developer A modifies:

application.properties

Developer B modifies:

same property

Merge conflict occurs.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
