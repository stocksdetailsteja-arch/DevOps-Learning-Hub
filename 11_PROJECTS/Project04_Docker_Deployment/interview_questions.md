# Docker Interview Questions

## Beginner

### What is Docker?

Docker packages applications into portable containers. 【1-2fb057】【2-e35244】

### Difference Between Image And Container?

Image:

Template

Container:

Running Instance

### What Is Dockerfile?

A file defining image build instructions.

### What Is Docker Compose?

Tool for managing multi-container applications. 【1-2fb057】【2-e35244】

## Intermediate

### What Are Docker Volumes?

Persistent storage mechanism.

### What Are Docker Networks?

Enable container communication.

### What Is A Registry?

A location used to store container images.

## Advanced (5+ Years)

### Why Use Multi-Stage Docker Builds?

To minimize runtime image size and remove build dependencies from production images. 【5-db3808】【6-82dc05】

### Why Run Containers As Non-Root?

To reduce security risk.

### How Would You Secure Docker Images?

- Non-root user
- Minimal base image
- Dependency scanning
- Remove unnecessary packages

### Explain A Production Incident.

Application container repeatedly restarted.

Investigation:

- Docker logs
- Health checks
- Port validation

Root Cause:

Application configuration error.

Resolution:

Corrected environment configuration and rebuilt image.

### How Do You Reduce Docker Image Size?

- Multi-stage builds
- Layer optimization
- Small runtime image
- Remove temporary files
