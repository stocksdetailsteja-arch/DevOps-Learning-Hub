# Jenkins Interview Cheatsheet

## What Is Jenkins?

Open-source automation server used for CI/CD pipelines. 【3-e7e4b9】【4-4e303d】

## What Is CI?

Continuous Integration.

## What Is CD?

Continuous Delivery / Deployment.

## Jenkins Architecture

Developer

↓

GitHub

↓

Jenkins Controller

↓

Agent

↓

Build

↓

Test

↓

Deploy

【3-e7e4b9】【4-4e303d】

## Controller Vs Agent

Controller:

- Pipeline Management
- Scheduling
- Coordination

Agent:

- Execute Jobs
- Build Applications
- Run Tests

【3-e7e4b9】

## What Is Jenkinsfile?

Version-controlled file defining Jenkins pipeline. 【3-e7e4b9】

## Declarative Vs Scripted Pipeline

Declarative:

Structured Syntax

Scripted:

Groovy-based Flexible Logic

【3-e7e4b9】

## What Are Webhooks?

Automatically trigger Jenkins when code changes occur. 【1-15074e】【2-6ca833】

## What Is Pipeline As Code?

Store pipeline definitions in Git using Jenkinsfile. 【1-15074e】【2-6ca833】

## What Are Jenkins Credentials?

Secure storage for:

- Passwords
- Tokens
- SSH Keys

【3-e7e4b9】

## What Are Quality Gates?

Validation checks before deployment.

Examples:

- Unit Tests
- Code Quality
- Security Scan

【1-15074e】【2-6ca833】

## CI/CD Flow

Code Commit

↓

Build

↓

Test

↓

Artifact

↓

Deploy

↓

Validate

↓

Release

## How Does Jenkins Fit In DevOps?

Jenkins connects GitHub, build tools, Docker, Kubernetes and deployment targets. 【1-15074e】【2-6ca833】
