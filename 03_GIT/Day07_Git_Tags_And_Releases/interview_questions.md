# Day 07 - Interview Questions

## Basic

### Q1 What Is A Git Tag?

A Git reference pointing to a specific commit.

### Q2 Why Use Tags?

To identify releases and deployment versions.

### Q3 Difference Between Lightweight And Annotated Tags?

Lightweight:

Simple reference.

Annotated:

Contains metadata and message.

## Intermediate

### Q1 What Is Semantic Versioning?

Format:

MAJOR.MINOR.PATCH

Example:

v2.3.5

### Q2 How Do You Push Tags?

git push origin --tags

## Advanced (5+ Years)

### Q1 Why Do Enterprises Use Tags Instead Of Branches For Releases?

Answer:

Tags provide immutable release references.

Branches continue changing.

### Q2 How Would Jenkins Use Tags?

Answer:

Pipeline detects tag.

↓

Build Artifact

↓

Deploy Specific Version

### Q3 Explain Release Rollback Strategy.

Answer:

If release v2.0 fails:

Rollback to:

v1.9

using previously tagged version.

### Q4 What Versioning Model Have You Used?

Answer:

Semantic Versioning:

Major

Minor

Patch

used in most enterprise environments.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
