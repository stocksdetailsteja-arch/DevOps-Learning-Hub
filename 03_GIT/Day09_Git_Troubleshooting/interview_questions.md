# Day 09 - Interview Questions

## Basic

### Q1 What Is Git Reflog?

Tracks HEAD and branch movements.

### Q2 What Is Git Stash?

Temporary storage for uncommitted changes.

### Q3 What Is Detached HEAD?

HEAD pointing directly to a commit.

## Intermediate

### Q1 Difference Between Reset And Revert?

Reset modifies history.

Revert preserves history.

### Q2 Which Reset Is Most Dangerous?

git reset --hard

## Advanced (5+ Years)

### Q1 Developer Lost Commits. How Would You Recover Them?

Answer:

git reflog

Locate commit

Checkout commit

Create new branch

Restore changes

### Q2 Why Is Revert Preferred In Production?

Answer:

Preserves audit history.

Avoids rewriting shared history.

### Q3 Production Branch Broken After Merge. What Would You Do?

Answer:

Identify faulty commit

Use git revert

Validate build

Redeploy

### Q4 Explain Detached HEAD Recovery.

Answer:

Identify commit

Create branch

or

Switch back to branch

Save work

### Q5 How Would You Recover A Deleted Branch?

Answer:

git reflog

Locate commit

git checkout -b new_branch COMMIT_ID

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
