# Day 01 - Docker Introduction Concepts

## What Is Docker?

Docker is a containerization platform that packages applications together with their dependencies.

A Docker package contains:

- Application Code

- Libraries

- Runtime

- Configuration

Docker packages applications into portable containers.

## What Is A Container?

A container is a lightweight, isolated runtime environment.

Container Includes:

- Application

- Libraries

- Runtime

- Dependencies

Containers run consistently across environments.

## Why Containers?

Before Containers:

Developer Machine

↓

Works Correctly

↓

Production

↓

Fails

Reason:

Different Environment

Different Libraries

Different Runtime

After Containers:

Docker Image

↓

Docker Container

↓

Runs Anywhere

## What Is A Virtual Machine?

Virtual Machine contains:

Application

↓

Guest OS

↓

Hypervisor

↓

Host OS

↓

Hardware

## Container vs Virtual Machine

Container:

- Lightweight

- Faster Startup

- Less Resource Usage

- Shares Host Kernel

Virtual Machine:

- Full OS Required

- Higher Resource Usage

- Slower Startup

Containers virtualize the operating system layer while VMs virtualize hardware.

## Docker Architecture

Developer

↓

Docker Client

↓

Docker Engine

↓

Docker Images

↓

Docker Containers

## Docker Components

Docker Client

Used to interact with Docker.

Examples:

docker run

docker build

docker pull

Docker Engine

Core component responsible for container execution.

Docker Image

Read-only template used for container creation.

Think of Image as Blueprint.

Docker Container

Running instance of an image.

Think of Container as Executing Application.

Docker Registry

Stores Docker Images.

Examples:

- Docker Hub

- Amazon ECR

- Azure Container Registry

## Docker Workflow

Developer

↓

Create Dockerfile

↓

Build Image

↓

Store Image

↓

Run Container

↓

Deploy Application

The workbook summarizes the workflow as build image, distribute image, run container, observe, and update.

## Benefits Of Docker

- Portability

- Consistency

- Scalability

- Isolation

- Fast Deployment

- Resource Efficiency

## Real DevOps Example

Developer

↓

GitHub

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

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
