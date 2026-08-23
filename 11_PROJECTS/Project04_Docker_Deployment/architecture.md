# Docker Deployment Architecture

## Architecture

Developer

↓

GitHub

↓

Source Code

↓

Docker Build

↓

Docker Image

↓

Docker Hub

↓

Docker Compose

↓

Application Container

↓

Database Container

## Components

### Application Container

Runs:

- Spring Boot API

### Database Container

Runs:

- MySQL

### Docker Network

Provides:

- Container Communication

### Docker Volume

Provides:

- Persistent Database Storage

## Request Flow

Client

↓

Application Container

↓

Database Container

## Failure Points

- Container Crash
- Network Failure
- Volume Failure
- Image Issue
- Startup Failure
