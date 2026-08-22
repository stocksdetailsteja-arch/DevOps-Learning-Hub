# Day 02 - Interview Questions

## Basic

### Q1 What Is Docker Engine?

Core component responsible for running containers.

### Q2 What Is Docker CLI?

Command-line interface for Docker.

### Q3 What Is Docker Daemon?

Background service managing Docker operations.

### Q4 How Do You Verify Docker Installation?

docker --version

or

docker run hello-world

## Intermediate

### Q1 Difference Between Docker CLI And Docker Daemon?

CLI:

User Interface

Daemon:

Background Service

### Q2 Why Run hello-world?

Validate Docker Installation.

### Q3 Why Enable Docker Service?

Start Docker Automatically After Reboot.

## Advanced (5+ Years)

### Q1 Docker Installed But Containers Not Running. What Will You Check?

Answer:

Docker Service

Docker Logs

System Resources

Permissions

Runtime Errors

### Q2 Why Is Docker Service Failing?

Answer:

- Misconfiguration

- Service Failure

- Resource Issues

- Package Corruption

### Q3 How Would You Validate Production Docker Installation?

Answer:

Version Verification

Service Validation

Logging Validation

Runtime Validation

Security Review

### Q4 Why Use Non-Root Docker Access?

Answer:

Improves usability while maintaining controlled access.

### Q5 Docker Installation Works But CI/CD Build Fails. What Will You Check?

Answer:

- Jenkins Permissions

- Docker Access

- Docker Daemon

- Environment Variables

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
