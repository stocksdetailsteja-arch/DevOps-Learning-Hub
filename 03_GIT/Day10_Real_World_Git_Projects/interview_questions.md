# Day 10 - Interview Questions

## Basic

### Q1 Why Is Git Important In DevOps?

Git provides version control and drives CI/CD workflows.

### Q2 What Is GitOps?

Using Git as the source of truth for deployments.

## Intermediate

### Q1 How Does Git Integrate With Jenkins?

Git Push

↓

Webhook

↓

Jenkins Job Trigger

↓

Build

↓

Deploy

### Q2 Why Use Release Branches?

To isolate release preparation from ongoing development.

## Advanced (5+ Years)

### Q1 Explain Enterprise Git Workflow.

Answer:

Developer

↓

Feature Branch

↓

PR

↓

Review

↓

CI Validation

↓

Merge

↓

Release Tag

↓

Deployment

### Q2 Explain GitOps Workflow.

Answer:

Git Repository

↓

ArgoCD

↓

Kubernetes

↓

Deployment

Changes are tracked and auditable.

### Q3 How Would You Manage Production Releases?

Answer:

Feature Branch

Pull Request

Review

CI Validation

Release Tag

Deployment

Rollback Plan

### Q4 What Branch Strategy Have You Used?

Answer:

- Feature Branch Workflow

- Git Flow

- Release Branches

- Hotfix Branches

Most enterprise projects use controlled branching and mandatory reviews.

### Q5 Design A Secure Git Workflow.

Answer:

- Protected Branches

- Pull Requests

- Review Requirements

- CI Validation

- Secret Scanning

- Signed Releases

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
