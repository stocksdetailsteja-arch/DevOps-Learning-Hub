# Day 08 - Git Best Practices Commands

## Create .gitignore

touch .gitignore

Screenshot:

01_create_gitignore.png

## Add Log Exclusion

echo "*.log" >> .gitignore

Screenshot:

02_ignore_logs.png

## Add Environment File Exclusion

echo ".env" >> .gitignore

Screenshot:

03_ignore_env.png

## Verify Ignored Files

git status

Screenshot:

04_verify_gitignore.png

## View Commit History

git log --oneline

Screenshot:

05_commit_history.png

## Example Commit Message

git commit -m "feat: add deployment validation"

Screenshot:

06_commit_standard.png

## Branch Naming Example

git checkout -b feature/docker-monitoring

Screenshot:

07_branch_naming.png

## Create Pre-Commit Hook

mkdir -p .git/hooks

Screenshot:

08_git_hooks.png

## Verify Hidden Files

ls -la

Screenshot:

09_hidden_files.png

## Show Repository Size

du -sh .git

Screenshot:

10_repo_size.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
