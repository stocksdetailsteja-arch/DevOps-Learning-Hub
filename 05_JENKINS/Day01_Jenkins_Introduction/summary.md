# Day 01 - Jenkins Introduction Summary

## Topics Covered

- Jenkins

- Continuous Integration

- Continuous Delivery

- Continuous Deployment

- Controller

- Agent

- Node

- Executor

- Workspace

- Job

- Build

- Plugin

- Pipeline

- Jenkinsfile

- Declarative Pipeline

- Scripted Pipeline

## Important Definitions

### Jenkins

An open-source automation server for build, test, delivery, and deployment automation.

### Controller

Coordinates Jenkins configuration, scheduling, queues, agents, plugins, credentials, and results.

### Agent

Executes work assigned by the controller.

### Executor

An execution slot on a node.

### Workspace

Filesystem location used for job execution.

### Jenkinsfile

A source-controlled text file containing the Pipeline definition.

### Pipeline

A modeled software-delivery process that can include build, test, package, deployment, and validation stages.

## Commands Reviewed

- cat /etc/os-release

- hostname

- whoami

- java -version

- which java

- free -h

- df -h

- nproc

- ss

- git --version

- mvn -version

- dpkg

- systemctl

## CI/CD Quick Revision

Continuous Integration:

- Integrate

- Build

- Test

- Provide feedback

Continuous Delivery:

- Build

- Test

- Package

- Keep deployable

- Allow controlled production approval

Continuous Deployment:

- Build

- Test

- Validate

- Deploy automatically

## Architecture Quick Revision

GitHub

↓

Jenkins Controller

↓

Build Queue

↓

Agent

↓

Executor

↓

Workspace

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

## Production Notes

- Keep the controller secure

- Use agents for heavy builds

- Protect credentials

- Install only required plugins

- Monitor disk and memory

- Back up Jenkins home

- Use Pipeline as Code

- Validate deployments

- Define rollback

- Avoid unrestricted internet exposure

## Interview Quick Notes

Jenkins automates build, test, delivery, and deployment activities.

The controller coordinates work.

Agents execute work.

Executors are build slots.

A Jenkinsfile stores pipeline logic in source control.

Declarative Pipeline is structured.

Scripted Pipeline is more flexible.

A successful command does not prove a healthy deployment.

## Key Takeaways

- Jenkins is an automation platform, not only a build tool.

- CI/CD requires engineering practices beyond installing Jenkins.

- Controller and agent separation is important for scale and reliability.

- Pipeline as Code improves versioning and review.

- Security, backup, monitoring, and rollback must be designed early.

## Next Topic

Day02_Jenkins_Installation

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
