# Day 09 - Git Troubleshooting Concepts

## Why Git Troubleshooting Matters?

Developers frequently:

- Delete Commits

- Delete Branches

- Reset History

- Encounter Merge Conflicts

- Lose Stashed Work

Git provides recovery tools.

## What Is Detached HEAD?

Occurs when HEAD points directly to a commit rather than a branch.

Example:

git checkout COMMIT_ID

Result:

HEAD detached.

## What Is Reflog?

Reflog records movement of:

HEAD

Branches

Commits

It helps recover lost work.

## Reset vs Revert

Reset:

Moves branch pointer.

Revert:

Creates new commit that undoes changes.

## What Is Git Stash?

Temporary storage area for uncommitted changes.

Useful when switching tasks quickly.

## Why Revert Is Safer In Production?

Reset rewrites history.

Revert preserves history.

Enterprise teams usually prefer revert for shared branches.

## Real World Example

Developer:

Hard Reset

↓

Commit Lost

↓

git reflog

↓

Recover Commit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
