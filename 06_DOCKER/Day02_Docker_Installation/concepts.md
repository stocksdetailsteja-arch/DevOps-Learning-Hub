# Day 02 - Docker Installation Concepts

## Why Install Docker?

Docker provides a platform for running applications inside containers.

Benefits:

- Portability

- Consistency

- Speed

- Isolation

## Docker Engine

Docker Engine is the core runtime responsible for:

- Building Images

- Running Containers

- Managing Resources

## Docker CLI

Docker CLI is used by administrators to interact with Docker.

Examples:

docker run

docker build

docker pull

docker ps

## Docker Daemon

Docker Daemon runs in the background.

Responsibilities:

- Image Management

- Container Lifecycle

- Volume Management

- Network Management

## Docker Service Flow

User

↓

Docker CLI

↓

Docker Daemon

↓

Docker Engine

↓

Container

## Docker Installation Components

Installed Components:

- Docker Engine

- Docker CLI

- Container Runtime

- Docker Service

## Docker User Permissions

By default:

Docker Requires Sudo

Example:

sudo docker ps

Later we can allow Docker access without sudo.

## Installation Validation

Verify:

- Docker Service Running

- Docker CLI Working

- Docker Version Displayed

- Docker Engine Available

## Real DevOps Example

Developer

↓

Jenkins

↓

Docker Build

↓

Docker Image

↓

Container

↓

Production

Docker is commonly used within modern delivery workflows alongside CI/CD systems.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
