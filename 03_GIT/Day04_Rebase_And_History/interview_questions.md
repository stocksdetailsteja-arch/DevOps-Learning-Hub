# Day 04 - Interview Questions

## Basic

### Q1 What Is Rebase?

Moves commits and reapplies them onto another base branch.

### Q2 Difference Between Merge And Rebase?

Merge:

Creates merge commit.

Rebase:

Creates cleaner linear history.

## Intermediate

### Q1 What Is Interactive Rebase?

Used for:

- Squashing

- Editing

- Reordering commits

### Q2 What Is Cherry Pick?

Copies a specific commit from one branch to another.

## Advanced (5+ Years)

### Q1 Why Do Teams Prefer Rebase Before Pull Requests?

Answer:

Benefits:

- Cleaner History

- Easier Reviews

- Reduced Merge Noise

### Q2 When Should You Avoid Rebase?

Answer:

Avoid rebasing shared public branches because history rewriting can impact collaborators.

### Q3 What Is Reflog Used For?

Answer:

Recovery of:

- Deleted Commits

- Detached HEAD

- Lost Branches

### Q4 Difference Between Soft, Mixed And Hard Reset?

Answer:

Soft:

Keeps staging and working directory.

Mixed:

Keeps working directory.

Hard:

Removes staged and working changes.

### Q5 How Would You Recover Deleted Commits?

Answer:

git reflog

Identify commit

git checkout COMMIT_ID

or

git reset --hard COMMIT_ID

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
