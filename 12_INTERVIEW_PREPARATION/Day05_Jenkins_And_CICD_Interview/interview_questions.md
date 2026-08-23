# Jenkins And CI/CD Interview Questions

## Beginner Questions

### What Is Jenkins?

Jenkins is an automation server used for CI/CD. 【3-e6a42e】【4-5e45d6】

### What Is CI?

Continuous Integration.

### What Is CD?

Continuous Delivery or Continuous Deployment.

### What Is Jenkinsfile?

Version-controlled text file defining Jenkins pipeline. 【3-e6a42e】

### Controller Vs Agent?

Controller coordinates Jenkins.

Agents execute workloads. 【3-e6a42e】

## Intermediate Questions

### Declarative Vs Scripted Pipeline?

Declarative:

Structured syntax.

Scripted:

Groovy based flexibility. 【3-e6a42e】

### How Does Jenkins Fit Into DevOps?

Jenkins connects GitHub, build tools, Docker/Kubernetes and deployment targets. 【1-2450bd】【2-0dc158】

### How Are Secrets Managed?

Store passwords and tokens in Jenkins Credentials. 【3-e6a42e】

### How Do You Automate Repetitive Work?

Use:

- Webhooks
- Pipeline As Code

【1-2450bd】【2-0dc158】

### How Do You Validate Changes Before Production?

Require:

- Tests
- Quality Gates
- Approvals
- Non-production validation

【1-2450bd】【2-0dc158】

## Advanced Questions (5+ Years)

### Jenkins Build Suddenly Starts Failing. What's Your Approach?

Step 1:

Review Build Logs

Step 2:

Check SCM Access

Step 3:

Verify Agent

Step 4:

Validate Tool Versions

Step 5:

Review Recent Changes

Step 6:

Validate Target Environment

### Jenkins Pipeline Stuck In Queue. What Would You Check?

- Agent Availability
- Labels
- Executors
- Node Status
- Resource Usage

The Jenkins workbook recommends checking queue status, agents and stage results. 【1-2450bd】【2-0dc158】

### How Do You Secure Jenkins?

- Least Privilege
- Folder Permissions
- Credentials Management
- Agent Isolation

【1-2450bd】【2-0dc158】

### How Do You Handle Environment Differences?

Use:

- Parameters
- Credentials
- Deployment Stages

【1-2450bd】【2-0dc158】

### How Would You Design Enterprise CI/CD?

GitHub

↓

Jenkins

↓

Build

↓

Test

↓

Quality Gate

↓

Artifact

↓

Container Build

↓

Deploy

↓

Validation

↓

Production

### Explain Rollback Strategy

- Versioned Artifact
- Previous Build
- Previous Image
- Previous Release
- Validation
