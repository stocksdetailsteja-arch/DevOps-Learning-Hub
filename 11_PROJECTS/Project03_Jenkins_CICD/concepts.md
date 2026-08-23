# Jenkins CI/CD Concepts

## Continuous Integration

Developers frequently merge changes.

Every change triggers:

- Build
- Validation
- Testing

## Continuous Delivery

Artifacts are prepared and validated for deployment.

## Continuous Deployment

Deployments can occur automatically after successful validation.

## Jenkinsfile

A Jenkinsfile is a version-controlled file defining the pipeline. 【4-dcfcd0】【3-313214】

## Pipeline As Code

Benefits:

- Version Control
- Reproducibility
- Auditability
- Code Review

## Webhook

GitHub sends repository events to Jenkins.

The webhook triggers builds automatically after code changes. 【5-a9099a】【6-7c1b5b】

## Credentials

Store:

- Personal Access Tokens
- Passwords
- SSH Keys

inside Jenkins Credentials instead of source code. 【7-149978】【8-e68637】

## Stages

Typical Pipeline Stages:

- Checkout
- Build
- Test
- Package
- Archive
- Deploy
- Validate

## Artifact

Output produced after packaging.

Examples:

- JAR
- WAR
- Docker Image

## Rollback

Restoring previously known good version.

## Health Check

Verifies successful deployment.

Examples:

- HTTP Endpoint
- Service Status
- Process Verification
