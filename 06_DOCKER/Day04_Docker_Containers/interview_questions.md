# Day 04 - Interview Questions

## Basic

### Q1 What Is A Docker Container?

Running instance of a Docker image.

### Q2 How Do You List Running Containers?

docker ps

### Q3 How Do You Stop A Container?

docker stop CONTAINER_ID

### Q4 How Do You View Container Logs?

docker logs CONTAINER_ID

## Intermediate

### Q1 Difference Between Image And Container?

Image:

Template

Container:

Running Instance

### Q2 What Is Interactive Mode?

Accessing container shell using exec.

### Q3 Why Review Logs?

Troubleshooting and debugging.

## Advanced (5+ Years)

### Q1 Container Keeps Stopping. What Will You Check?

Answer:

Application Logs

Container Logs

Exit Code

Resource Usage

Configuration

### Q2 Why Are Containers Considered Ephemeral?

Answer:

Containers can be created and destroyed quickly without affecting the image.

### Q3 How Would You Troubleshoot Production Container Failure?

Answer:

docker ps -a

docker logs

docker inspect

System Resources

Application Health

### Q4 Why Is docker exec Important?

Answer:

Provides access for troubleshooting and validation.

### Q5 Container Running But Application Unreachable. What Will You Check?

Answer:

Application Process

Logs

Port Exposure

Network Configuration

Firewall Rules

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
