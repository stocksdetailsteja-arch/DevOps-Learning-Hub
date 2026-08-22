# Jenkins Learning Path

## Overview

This section covers Jenkins from fundamentals to advanced, production-oriented CI/CD implementation.

Jenkins is an automation server commonly used to automate software build, testing, integration, delivery, deployment, and operational workflows.

This learning path includes:

- Jenkins Fundamentals

- Jenkins Installation

- Jenkins Architecture

- Jenkins Jobs

- Freestyle Projects

- Pipeline As Code

- Declarative Pipelines

- Scripted Pipelines

- GitHub Integration

- Webhooks

- Credentials Management

- Distributed Builds

- Security

- Troubleshooting

- End-to-End CI/CD Projects

## Learning Objectives

By completing this Jenkins module, you should be able to:

- Explain Continuous Integration

- Explain Continuous Delivery

- Explain Continuous Deployment

- Install Jenkins on a Linux server

- Configure Jenkins securely

- Understand Jenkins controller and agent architecture

- Create and manage Jenkins jobs

- Create Freestyle projects

- Write Declarative Pipelines

- Understand Scripted Pipelines

- Create and maintain Jenkinsfiles

- Integrate Jenkins with Git and GitHub

- Configure GitHub webhooks

- Manage credentials securely

- Configure build parameters

- Create scheduled and event-driven builds

- Configure distributed builds using agents

- Install and manage Jenkins plugins

- Troubleshoot failed and stuck builds

- Implement notifications

- Design rollback and recovery strategies

- Build an end-to-end CI/CD project

## Why Learn Jenkins?

Modern software teams need repeatable and automated delivery processes.

Without CI/CD automation:

- Builds are performed manually

- Testing becomes inconsistent

- Deployments become error-prone

- Releases take longer

- Troubleshooting becomes difficult

- Rollbacks become risky

Jenkins helps automate repetitive delivery activities and provides a centralized system for managing build and deployment workflows.

## What Is Continuous Integration?

Continuous Integration is the practice of frequently integrating code changes into a version-controlled repository and automatically validating those changes.

A typical Continuous Integration flow is:

Developer

↓

Git Commit

↓

Git Push

↓

Jenkins Build Trigger

↓

Compile

↓

Unit Test

↓

Quality Validation

↓

Build Artifact

## What Is Continuous Delivery?

Continuous Delivery keeps an application in a deployable state.

A typical Continuous Delivery flow is:

Source Code

↓

Build

↓

Test

↓

Package

↓

Deploy To Test Environment

↓

Validation

↓

Manual Production Approval

↓

Production Deployment

## What Is Continuous Deployment?

Continuous Deployment automatically releases validated changes to production without a mandatory manual approval stage.

A typical Continuous Deployment flow is:

Source Code

↓

Automated Build

↓

Automated Tests

↓

Security And Quality Checks

↓

Automated Deployment

↓

Post-Deployment Validation

## Continuous Delivery vs Continuous Deployment

### Continuous Delivery

- Release process is automated

- Application remains deployable

- Production release may require manual approval

### Continuous Deployment

- Build, test, and deployment are automated

- Validated changes can reach production automatically

- Requires reliable tests, monitoring, rollback, and governance

## Jenkins Learning Roadmap

### Day01_Jenkins_Introduction

Topics:

- What Is Jenkins?

- Why Jenkins Is Used

- Continuous Integration

- Continuous Delivery

- Continuous Deployment

- Jenkins Features

- Jenkins Terminology

- Jenkins Use Cases

- CI/CD Workflow

### Day02_Jenkins_Installation

Topics:

- Jenkins Prerequisites

- Java Installation

- Jenkins Installation On Ubuntu

- Jenkins Installation On AWS EC2

- Jenkins Service Management

- Initial Administrator Password

- Initial Setup Wizard

- Plugin Installation

- Administrator User Creation

- Jenkins Backup Considerations

### Day03_Jenkins_Architecture

Topics:

- Jenkins Controller

- Jenkins Agents

- Nodes

- Executors

- Workspaces

- Queues

- Distributed Builds

- Agent Labels

- Build Execution Flow

- Controller Security

### Day04_Jenkins_Jobs

Topics:

- Jenkins Job Concepts

- Job Creation

- Build Steps

- Build Triggers

- Scheduled Builds

- Parameterized Builds

- Environment Variables

- Build History

- Console Output

- Artifact Archival

### Day05_Freestyle_Project

Topics:

- Freestyle Job Configuration

- Git Repository Integration

- Build Commands

- Shell Execution

- Build Parameters

- Source Code Management

- Post-Build Actions

- Artifact Management

- Notifications

### Day06_Jenkins_Pipelines

Topics:

- Pipeline As Code

- Jenkinsfile

- Declarative Pipeline

- Scripted Pipeline

- Agent Directive

- Environment Directive

- Parameters

- Stages

- Steps

- Post Actions

- Error Handling

- Pipeline Validation

### Day07_GitHub_Integration

Topics:

- GitHub Repository Integration

- GitHub Personal Access Tokens

- SSH Authentication

- Webhooks

- Poll SCM

- Webhook-Triggered Builds

- Branch-Based Builds

- Pull Request Validation

- Multibranch Pipelines

### Day08_Credentials_Management

Topics:

- Jenkins Credentials Store

- Username And Password Credentials

- SSH Private Keys

- Secret Text

- Tokens

- Credentials IDs

- Credentials Binding

- Secret Masking

- Folder-Level Credentials

- Security Best Practices

### Day09_CI_CD_Project

Topics:

- Source Code Checkout

- Application Build

- Unit Testing

- Artifact Packaging

- Quality Validation

- Deployment

- Health Checks

- Notifications

- Failure Handling

- Rollback Strategy

### Day10_Real_World_Jenkins_Project

Topics:

- Enterprise Pipeline Design

- Multibranch Pipeline

- Shared Libraries

- Distributed Agents

- Build Promotion

- Environment Approvals

- Zero-Downtime Deployment Concepts

- Rollback Automation

- Monitoring

- Backup And Disaster Recovery

- Production Troubleshooting

## Standard Structure For Every Jenkins Day

Each Jenkins day must contain:

- README.md

- concepts.md

- commands.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- practise_session.md

- DayXX_Topic_Name_Lab_Screenshots/

## Recommended Learning Sequence

Follow this order for every Jenkins topic:

Read README.md

Study concepts.md

Review commands.md

Complete practise_session.md

Document results in lab_notes.md

Study interview_questions.md

Practice troubleshooting.md scenarios

Revise summary.md

Save screenshots in the day-specific screenshots folder

Commit and push the completed module to GitHub

## Jenkins Architecture Overview

A simplified Jenkins architecture is:

Developer

↓

Git Repository

↓

Webhook

↓

Jenkins Controller

↓

Build Queue

↓

Jenkins Agent

↓

Build

↓

Test

↓

Artifact

↓

Deployment

↓

Monitoring

## Jenkins Controller

The Jenkins Controller is responsible for coordinating Jenkins operations.

Typical responsibilities include:

- Managing jobs

- Managing pipelines

- Storing configuration

- Scheduling builds

- Managing the build queue

- Assigning builds to agents

- Managing plugins

- Managing credentials

- Displaying build results

Production build workloads should be planned carefully so that the controller does not become overloaded.

## Jenkins Agent

A Jenkins Agent executes work assigned by the controller.

Agents can be used for:

- Java builds

- Docker builds

- Linux builds

- Windows builds

- Testing

- Deployment

- Specialized tools

Agent labels can help route a job to an appropriate execution environment.

## Jenkins Jobs

A Jenkins job defines an automated activity.

Examples:

- Compile application

- Run unit tests

- Build JAR file

- Build Docker image

- Upload artifact

- Deploy application

- Execute health check

- Generate report

## Jenkins Pipeline

A Jenkins Pipeline represents a CI/CD workflow as code.

A pipeline can include:

- Checkout

- Build

- Test

- Static analysis

- Security scanning

- Package

- Publish

- Deploy

- Validate

- Notify

- Rollback

## Jenkinsfile

A Jenkinsfile stores pipeline logic in the source-code repository.

Benefits:

- Pipeline version control

- Code review

- Change history

- Reusability

- Collaboration

- Reproducibility

The Jenkinsfile should not contain hardcoded passwords, tokens, access keys, or private keys.

## Declarative Pipeline

A Declarative Pipeline follows a structured pipeline syntax.

Common sections include:

- pipeline

- agent

- environment

- parameters

- stages

- steps

- post

Declarative Pipelines are generally easier to read and standardize.

## Scripted Pipeline

A Scripted Pipeline provides flexible, code-oriented pipeline logic.

Scripted Pipelines can support complex workflows but may become difficult to maintain if standards, functions, and shared libraries are not used properly.

## Jenkins Plugins

Plugins extend Jenkins functionality.

Common plugin categories include:

- Source Code Management

- Pipeline

- Credentials

- Build Tools

- Notifications

- Cloud Agents

- Security

- Reporting

Plugin governance is important because unnecessary or outdated plugins can increase operational and security risk.

## Jenkins Credentials

Jenkins credentials may include:

- Username and password

- Secret text

- SSH private key

- Certificate

- Token

Best practices:

- Store secrets in the Jenkins credentials system or an approved secret manager

- Reference credentials using credentials IDs

- Restrict credential scope

- Mask secrets in logs

- Rotate credentials regularly

- Never hardcode credentials in Jenkinsfiles

- Never upload secrets to GitHub

## Jenkins And GitHub Integration

A common integration workflow is:

Developer Pushes Code

↓

GitHub Receives Commit

↓

GitHub Webhook Notifies Jenkins

↓

Jenkins Starts Pipeline

↓

Jenkins Checks Out Code

↓

Build And Test Run

↓

Artifact Is Created

↓

Deployment Starts

↓

Health Check Validates Application

## Jenkins And AWS Integration

Jenkins can be used with AWS for:

- EC2-based build agents

- S3 artifact storage

- ECR image storage

- ECS deployments

- EKS deployments

- CloudWatch monitoring

- Infrastructure automation

AWS access should use approved temporary-credential mechanisms and least-privilege permissions rather than hardcoded access keys.

## Jenkins And Docker Integration

A typical Docker-based pipeline is:

Git Checkout

↓

Build Application

↓

Create Docker Image

↓

Test Docker Image

↓

Push Image To Registry

↓

Deploy Container

↓

Validate Service

## Jenkins And Kubernetes Integration

A typical Kubernetes delivery flow is:

Git Push

↓

Jenkins Pipeline

↓

Build Docker Image

↓

Push Image To Registry

↓

Update Kubernetes Deployment

↓

Rolling Update

↓

Readiness Validation

↓

Rollback If Required

## Production Jenkins Architecture

A production-oriented Jenkins design may contain:

- Secured Jenkins Controller

- Dedicated Build Agents

- Source-Control Integration

- Credentials Management

- Artifact Repository

- Backup Strategy

- Monitoring

- Log Management

- Role-Based Access

- Network Restrictions

- Disaster-Recovery Procedures

- Tested Upgrade Procedure

## Jenkins Security Best Practices

- Do not expose Jenkins directly to unrestricted internet access

- Use HTTPS

- Restrict network access

- Apply role-based permissions

- Disable anonymous administrative access

- Use least-privilege service accounts

- Protect credentials

- Keep Jenkins updated

- Review installed plugins

- Remove unused plugins

- Back up Jenkins configuration

- Review audit and security logs

- Protect the Jenkins home directory

- Avoid executing untrusted pipeline code on privileged agents

## Jenkins Backup Scope

A Jenkins backup strategy should consider:

- Jenkins home directory

- Job configurations

- Pipeline configurations

- Plugin information

- Credentials configuration

- User configuration

- Build metadata

- Shared libraries

- System configuration

Credentials and backup files must be protected appropriately.

## Production Monitoring Requirements

Monitor:

- Jenkins availability

- Controller CPU

- Controller memory

- Disk utilization

- Build queue length

- Agent availability

- Build duration

- Build failure rate

- Executor utilization

- Plugin and system errors

- Backup status

- Certificate expiry

## Common Jenkins Production Problems

- Jenkins service not starting

- Java version incompatibility

- Port conflict

- Disk full

- High memory usage

- Build queue growing

- Agent offline

- Workspace corruption

- Git authentication failure

- Webhook failure

- Plugin incompatibility

- Credential binding error

- Stuck pipeline

- Artifact upload failure

- Deployment timeout

## Advanced Interview Focus For 5+ Years Experience

The Jenkins modules will include detailed questions and answers about:

- Controller and agent architecture

- Declarative vs Scripted Pipelines

- Multibranch Pipelines

- Shared Libraries

- Credentials Management

- Pipeline Security

- Build Isolation

- Agent Scaling

- Failed Deployment Recovery

- Jenkins Backup And Restore

- Plugin Governance

- Pipeline Performance

- Zero-Downtime Deployment

- Rollback Strategy

- Production Incident Investigation

## Repository And Documentation Standards

Every Jenkins tutorial must include:

- Clear learning objectives

- Detailed concepts

- Commands and configuration steps

- Hands-on labs

- Screenshot names

- Validation steps

- Cleanup steps

- Beginner questions

- Intermediate questions

- Advanced 5+ years interview questions

- Production troubleshooting scenarios

- Security practices

- Summary notes

## Expected Outcome

After completing this Jenkins section, you should be able to:

- Install Jenkins on Linux and AWS EC2

- Configure Jenkins securely

- Create Freestyle jobs

- Create Declarative Pipelines

- Understand Scripted Pipelines

- Integrate Jenkins with GitHub

- Configure automatic webhook builds

- Manage Jenkins credentials

- Configure agents

- Troubleshoot Jenkins failures

- Build an end-to-end CI/CD project

- Explain Jenkins architecture confidently in interviews

## Prerequisites

Before starting Jenkins, complete:

- Linux Fundamentals

- Bash Scripting

- Git And GitHub

- AWS EC2 Basics

Recommended knowledge:

- Java build lifecycle

- Maven basics

- Networking basics

- Linux permissions

- Process management

- Service management

## Practice Environment

Recommended learning environment:

- AWS EC2 Ubuntu instance

- Java

- Jenkins

- Git

- GitHub repository

- Maven

- Browser access to Jenkins

Cost-safety rules:

- Stop or terminate unused EC2 instances

- Review attached EBS volumes

- Delete unused snapshots

- Restrict Jenkins network access

- Push documentation to GitHub before terminating temporary lab infrastructure

## Module Completion Checklist

- Jenkins root README completed

- Day01 Jenkins Introduction completed

- Day02 Jenkins Installation completed

- Day03 Jenkins Architecture completed

- Day04 Jenkins Jobs completed

- Day05 Freestyle Project completed

- Day06 Jenkins Pipelines completed

- Day07 GitHub Integration completed

- Day08 Credentials Management completed

- Day09 CI/CD Project completed

- Day10 Real World Jenkins Project completed

- Screenshots uploaded

- Interview questions reviewed

- Troubleshooting scenarios practiced

- Repository committed and pushed

## Next Step

Proceed to:

Day01_Jenkins_Introduction

## Final Goal

Build a secure, maintainable, observable, and production-oriented CI/CD workflow using:

- GitHub

- Jenkins

- Maven

- Java

- Docker

- AWS

- Deployment Validation

- Monitoring

- Rollback

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
