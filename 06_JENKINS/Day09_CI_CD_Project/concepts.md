# Day 09 - CI/CD Project Concepts

## What Is CI/CD?

CI/CD automates software delivery.

CI:

Continuous Integration

CD:

Continuous Delivery / Continuous Deployment

## CI/CD Workflow

Developer

↓

Git Push

↓

GitHub

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

↓

Validation

## Build Stage

Purpose:

Compile Source Code

Examples:

- Maven Build

- Gradle Build

- Java Compilation

## Test Stage

Purpose:

Validate Application

Examples:

- Unit Tests

- Integration Tests

- API Tests

## Package Stage

Purpose:

Generate Deployable Artifact

Examples:

.jar

.war

Docker Image

## Deployment Stage

Purpose:

Deploy Application

Targets:

- EC2

- Docker

- Kubernetes

- Test Environment

## Validation Stage

Purpose:

Confirm Application Availability

Checks:

- Service Status

- Health Endpoint

- Logs

- Smoke Tests

## Notification Stage

Purpose:

Inform Team

Examples:

- Email

- Slack

- Teams

## Rollback Strategy

If deployment fails:

Deploy Previous Version

↓

Validate

↓

Restore Service

Rollback awareness is emphasized in deployment pipeline concepts within the Jenkins workbook.

## Real DevOps Example

Developer Push

↓

GitHub

↓

Jenkins Pipeline

↓

Build

↓

Test

↓

Artifact

↓

Deploy

↓

Monitor

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
