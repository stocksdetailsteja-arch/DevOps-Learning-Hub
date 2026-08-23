# Docker Interview Questions

## Beginner Questions

### What Is Docker?

Docker is a platform for creating and running containers. 【3-8d462e】【4-c96652】

### What Is A Container?

Container is a lightweight package containing application and dependencies. 【3-8d462e】【4-c96652】

### Difference Between Docker And Virtual Machine?

Docker:

- Shares Host Kernel
- Lightweight
- Faster Startup

VM:

- Full Operating System
- More Resource Intensive

### What Is Dockerfile?

Text file containing image build instructions. 【5-b3c273】

### What Is Docker Hub?

Public image registry.

## Intermediate Questions

### Difference Between Image And Container?

Image:

Template

Container:

Running Instance

### What Is Docker Compose?

Tool used to run multiple containers together.

### What Is Volume?

Persistent container storage.

### What Is Bridge Network?

Default Docker network.

### What Is Multi Stage Build?

Uses separate build and runtime stages.

Benefits:

- Smaller Images
- Better Security

### Why Use Containers?

- Portability
- Consistency
- Scalability

【3-8d462e】【4-c96652】

## Advanced Questions (5+ Years)

### Docker Container Keeps Restarting. What Would You Check?

Investigation:

- Logs
- Exit Code
- Entrypoint
- Health Check
- Application Startup

The Docker workbook recommends checking image availability, command/entrypoint, logs, exit code, ports, volumes, network, permissions and resources. 【1-df8b34】【2-c19a67】

### How Do You Secure Docker Containers?

- Run Non-Root User
- Minimize Images
- Scan Vulnerabilities
- Restrict Capabilities

The Docker workbook explicitly recommends non-root execution, minimal images and dependency scanning. 【1-df8b34】【2-c19a67】

### How Do You Handle Secrets?

- Secret Stores
- Runtime Mounts
- Environment Variables

Never bake secrets into images. 【1-df8b34】【2-c19a67】

### Explain Rollback Strategy

- Use Immutable Images
- Use Previous Image Tag
- Redeploy Previous Version

The Docker workbook recommends immutable versioned images and redeployment using earlier tags. 【1-df8b34】【2-c19a67】

### How Do You Monitor Docker?

Use:

- docker stats
- docker logs
- docker inspect
- Application Metrics

The Docker workbook recommends logs, stats, inspect output, events and metrics. 【1-df8b34】【2-c19a67】

### How Do You Prevent Configuration Drift?

Build images from Dockerfiles stored in Git and pin versions. 【1-df8b34】【2-c19a67】

### Explain Production Docker Deployment Flow

Developer

↓

GitHub

↓

Jenkins

↓

Docker Build

↓

Docker Registry

↓

Deployment

↓

Monitoring
