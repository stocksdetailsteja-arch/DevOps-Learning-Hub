# Day 07 - GitHub Integration Concepts

## Why Integrate GitHub With Jenkins?

GitHub stores source code.

Jenkins automates:

- Build

- Test

- Package

- Deploy

Integration provides automated CI/CD.

## GitHub Integration Flow

Developer Push

↓

GitHub Repository

↓

Webhook

↓

Jenkins

↓

Build

↓

Test

↓

Artifact

↓

Deploy

## What Is SCM?

SCM = Source Code Management

Examples:

- Git

- GitHub

- Bitbucket

- SVN

Jenkins uses SCM configuration to download source code.

## Git Plugin

The Git Plugin enables Jenkins to:

- Clone Repositories

- Pull Changes

- Checkout Branches

- Build Code

## Credentials

GitHub access commonly uses:

- Username/Password

- Personal Access Token

- SSH Key

Never hardcode credentials inside jobs.

## Personal Access Token (PAT)

PAT is used instead of passwords for secure GitHub authentication.

Benefits:

- Better Security

- Access Control

- Token Rotation

## Webhooks

Webhook sends GitHub events to Jenkins.

Example:

Git Push

↓

Webhook Trigger

↓

Jenkins Build

## Poll SCM

Alternative to Webhooks.

Jenkins periodically checks repository changes.

Example:

Every 5 Minutes

↓

Check GitHub

↓

Trigger Build

## Automatic Builds

Developer Push

↓

GitHub

↓

Webhook

↓

Jenkins Build Automatically

Benefits:

- Faster Feedback

- Continuous Integration

- Reduced Manual Work

## Branch Builds

Examples:

main

develop

feature

release

Different branches can trigger different pipelines.

## Real DevOps Example

Developer Push

↓

GitHub

↓

Webhook

↓

Jenkins

↓

Build

↓

Test

↓

Deploy

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
