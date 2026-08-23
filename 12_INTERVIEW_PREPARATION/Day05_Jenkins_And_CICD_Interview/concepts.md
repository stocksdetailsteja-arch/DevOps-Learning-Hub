# Jenkins Concepts

## What Is Jenkins?

Jenkins is an automation server commonly used to implement CI/CD pipelines. 【3-e6a42e】【4-5e45d6】

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

## Controller

Responsible for:

- Scheduling
- Pipeline Management
- Agent Coordination

The internal Jenkins workbook defines the controller as the component coordinating Jenkins and the agents as build executors. 【3-e6a42e】

## Agent

Responsible for:

- Build Execution
- Testing
- Deployment

## CI Pipeline

Code Commit

↓

Build

↓

Unit Test

↓

Package

## CD Pipeline

Artifact

↓

Deploy

↓

Validate

↓

Release

## Jenkinsfile

Version-controlled file defining pipeline stages. 【3-e6a42e】

## Pipeline Types

### Declarative

Structured syntax.

### Scripted

Groovy-based flexible syntax.

The Jenkins workbook differentiates declarative pipelines from scripted pipelines. 【3-e6a42e】

## Credentials

Store:

- Passwords
- Tokens
- SSH Keys

Secrets should be stored using Jenkins Credentials and exposed only in controlled scopes. 【3-e6a42e】

## Webhook

Automatically triggers builds from GitHub events.

## Pipeline As Code

Store Jenkinsfile in Git and manage configuration carefully. 【1-2450bd】【2-0dc158】

## Quality Gates

Validate:

- Build
- Tests
- Security
- Code Quality

before deployment. 【1-2450bd
