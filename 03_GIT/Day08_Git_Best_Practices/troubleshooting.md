# Day 08 - Git Best Practices Troubleshooting

## Scenario 1

Sensitive File Committed

Cause:

Missing .gitignore

Resolution:

Remove file from tracking.

Rotate exposed credentials if applicable.

## Scenario 2

Repository Becomes Large

Cause:

Large files committed.

Resolution:

Review repository contents.

Use Git LFS when appropriate.

## Scenario 3

Poor Commit History

Cause:

Non-descriptive messages.

Resolution:

Follow commit standards.

## Scenario 4

Branch Naming Confusion

Cause:

No naming standard.

Resolution:

Implement naming policy.

## Scenario 5 (5+ Years)

Production Secret Found In Repository

Investigation:

- Commit History

- Exposure Scope

- Access Logs

Resolution:

Remove secret.

Rotate credentials.

Follow organizational security procedures.

## Scenario 6 (5+ Years)

Repository Growth Impacts CI/CD

Investigation:

- Git Objects

- Large Files

- Build Artifacts

Resolution:

Cleanup repository.

Prevent future artifact commits.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
