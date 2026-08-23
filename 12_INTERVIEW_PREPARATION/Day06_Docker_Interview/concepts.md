# Docker Concepts

## What Is Docker?

Docker is an open-source platform used to build, ship and run containers. 【3-8d462e】【4-c96652】

## What Is A Container?

A lightweight package that contains:

- Code
- Runtime
- Libraries
- Dependencies

Containers run consistently across environments. 【3-8d462e】【4-c96652】

## Docker Architecture

Docker Client

↓

Docker Engine

↓

Docker Images

↓

Docker Containers

↓

Registry

Docker architecture consists of Docker Engine, Images, Containers, Docker Hub and Dockerfile. 【3-8d462e】【4-c96652】

## Docker Image

Read-only template used to create containers.

## Docker Container

Running instance of an image.

## Dockerfile

File containing image build instructions.

Internal Docker learning material identifies Dockerfile as the component used to automate image creation. 【5-b3c273】

## Image Layers

Docker images are built using layers.

Benefits:

- Reusability
- Faster Builds
- Caching

## Docker Registry

Stores images.

Examples:

- Docker Hub
- AWS ECR
- Azure ACR

## Docker Volume

Provides persistent storage.

## Docker Network

Enables container communication.

Network Types:

- Bridge
- Host
- Overlay

## Docker Compose

Used to manage multi-container applications.

## Multi Stage Build

Uses separate build and runtime stages.

Benefits:

- Smaller Images
- Better Security
- Faster Deployment

## Container Benefits

- Portability
- Speed
- Resource Efficiency
- Scalability

These benefits are highlighted in internal Docker reference material. 【3-8d462e】【4-c96652】
