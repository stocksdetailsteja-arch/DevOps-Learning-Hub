# Day 07 - Git Tags And Releases Concepts

## What Is A Git Tag?

A Git Tag is a reference pointing to a specific commit.

Tags are commonly used to mark releases.

Example:

v1.0.0

v1.1.0

v2.0.0

## Why Use Tags?

Benefits:

- Version Tracking

- Release Identification

- Easier Rollback

- Deployment Control

## Lightweight Tag

Simple pointer to a commit.

Example:

git tag v1.0

Contains:

- Tag Name

Only

## Annotated Tag

Stores additional metadata:

- Tag Name

- Author

- Date

- Message

Example:

git tag -a v1.0 -m "Production Release"

## Semantic Versioning

Format:

MAJOR.MINOR.PATCH

Example:

v2.4.1

Meaning:

Major = Breaking Changes

Minor = New Features

Patch = Bug Fixes

## GitHub Releases

GitHub Releases are created from tags.

Release includes:

- Version

- Release Notes

- Downloadable Artifacts

## Production Deployment Flow

Developer Commit

↓

Tag Creation

↓

Push Tag

↓

Jenkins Trigger

↓

Deployment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
