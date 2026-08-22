# Day 03 - Interview Questions

## Basic

### Q1 What Is A Docker Image?

Read-only template used to create containers.

### Q2 What Is Docker Hub?

Public registry hosting Docker images.

### Q3 What Is An Image Tag?

Version identifier for images.

### Q4 What Is Image Layering?

Docker image structure based on reusable layers.

## Intermediate

### Q1 Difference Between Image And Container?

Image:

Template

Container:

Running Instance

### Q2 Why Are Layers Important?

Reduce build time and storage usage.

### Q3 Why Avoid latest Tag In Production?

Uncontrolled version changes can cause deployment issues.

## Advanced (5+ Years)

### Q1 Why Are Docker Images Portable?

Answer:

Images contain required application components and dependencies.

### Q2 How Would You Reduce Image Size?

Answer:

- Multi-stage Builds

- Smaller Base Images

- Remove Unnecessary Packages

- Clean Temporary Files

### Q3 Image Works Locally But Fails In Production. What Will You Check?

Answer:

Image Version

Environment Variables

Network Configuration

Resource Limits

Container Logs

### Q4 How Do Enterprises Manage Images?

Answer:

- Version Control

- Private Registries

- Security Scanning

- Image Lifecycle Management

### Q5 Why Inspect Images Before Production?

Answer:

- Validate Layers

- Validate Configuration

- Validate Security

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
