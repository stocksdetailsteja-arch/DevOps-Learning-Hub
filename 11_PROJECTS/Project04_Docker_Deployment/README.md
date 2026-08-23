# Project 04 - Docker Deployment

## Project Title

Containerized Spring Boot Application Deployment

## Objective

Build a production-ready Dockerized application deployment.

The solution should:

- Build application
- Create Docker Image
- Deploy Container
- Use Volumes
- Configure Networking
- Use Docker Compose
- Use Multi-Stage Build
- Run As Non-Root User
- Support Rollback

## Business Problem

Applications behave differently across environments.

Common issues:

- Dependency conflicts
- Manual deployment errors
- Environment inconsistency
- Poor portability

Docker solves these challenges by packaging applications and dependencies into portable containers. 【1-2fb057】【2-e35244】

## Solution

Application

↓

Docker Build

↓

Docker Image

↓

Docker Registry

↓

Docker Compose

↓

Running Containers

↓

Health Validation

## Technologies Used

- Docker
- Docker Compose
- Java
- Spring Boot
- Maven
- Ubuntu
- AWS EC2

## Project Deliverables

- Dockerfile
- Docker Compose
- Tagged Images
- Volume Configuration
- Network Configuration
- Deployment Documentation
- Troubleshooting Guide
- Rollback Guide
