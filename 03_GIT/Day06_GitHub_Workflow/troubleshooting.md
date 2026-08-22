# Day 06 - GitHub Workflow Troubleshooting

## Scenario 1

Pull Request Not Visible

Cause:

Branch not pushed.

Resolution:

git push origin branch-name

## Scenario 2

Pull Request Cannot Merge

Cause:

Merge conflict.

Resolution:

Resolve conflicts locally.

## Scenario 3

Push Rejected

Cause:

Protected branch.

Resolution:

Create Pull Request.

## Scenario 4

Branch Missing

Cause:

Wrong repository.

Resolution:

Verify remote URL.

## Scenario 5 (5+ Years)

Production Code Merged Without Review

Investigation:

- Branch Protection

- Audit Logs

- Merge Settings

Resolution:

Enforce review policy.

## Scenario 6 (5+ Years)

CI Pipeline Failed On PR

Investigation:

- Jenkins Logs

- Build Logs

- Test Results

Resolution:

Fix issue before merge.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
