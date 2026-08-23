# Docker Interview Cheatsheet

## What Is Docker?

Open-source platform used to build, ship and run containers. 【3-1696a8】【4-e2e3d5】

## What Is A Container?

Lightweight package containing:

- Application
- Runtime
- Libraries
- Dependencies

Containers run consistently across environments. 【3-1696a8】【4-e2e3d5】

## Docker Vs Virtual Machine

Docker:

- Shares Host Kernel
- Lightweight
- Fast Startup

Virtual Machine:

- Full Operating System
- More Resource Consumption

## Docker Architecture

Docker Client

↓

Docker Engine

↓

Images

↓

Containers

↓

Registry

【3-1696a8】【4-e2e3d5】

## What Is Docker Image?

Read-only template used to create containers.

## What Is Docker Container?

Running instance of an image.

## What Is Dockerfile?

File used to automate image creation. 【5-bdfb38】

## What Is Docker Hub?

Public image registry.

## What Is Registry?

Storage location for Docker images.

Examples:

- Docker Hub
- Amazon ECR
- Azure ACR

## What Are Layers?

Image build components.

Benefits:

- Reusability
- Faster Builds
- Caching

## What Is Volume?

Persistent storage for containers.

## What Is Docker Network?

Provides communication between containers.

## Network Types

- Bridge
- Host
- Overlay

## What Is Docker Compose?

Tool for managing multi-container applications.

## What Is Multi Stage Build?

Separate build and runtime stages.

Benefits:

- Small Images
- Better Security
- Faster Deployments

## Benefits Of Docker

- Portability
- Consistency
- Scalability
- Fast Deployment

【3-1696a8】【4-e2e3d5】
