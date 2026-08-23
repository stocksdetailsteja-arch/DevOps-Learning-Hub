# Docker Concepts

## What Is Docker?

Docker is a platform for packaging applications and dependencies into portable containers. 【1-2fb057】【2-e35244】

## Container

A running instance of an image.

## Image

A template used to create containers.

## Dockerfile

A file containing instructions for image creation.

## Layers

Docker images consist of reusable layers.

Benefits:

- Faster Builds
- Smaller Downloads
- Layer Caching

## Container Networking

Docker automatically creates virtual networks.

Benefits:

- Service Discovery
- Isolation
- Communication

## Volumes

Volumes provide persistent storage.

Benefits:

- Data Persistence
- Backup
- Recovery

## Multi-Stage Build

Used to separate:

- Build Environment
- Runtime Environment

Benefits:

- Smaller Images
- Better Security
- Faster Deployment

Multi-stage builds use multiple Dockerfile stages and selectively copy artifacts into the final image. 【5-db3808】【6-82dc05】

## Registry

Stores Docker Images.

Examples:

- Docker Hub
- Amazon ECR
