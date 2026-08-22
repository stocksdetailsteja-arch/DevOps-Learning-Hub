# Day 03 - Docker Images Concepts

## What Is A Docker Image?

A Docker Image is a read-only template used to create containers.

Think:

Image = Blueprint

Container = Running Instance

Docker images package applications and dependencies into portable units that can run consistently across environments.

## Image Creation Flow

Dockerfile

↓

Build Image

↓

Store Image

↓

Run Container

## Image Layers

Docker Images are built using layers.

Example:

Base OS Layer

↓

Java Layer

↓

Application Layer

↓

Configuration Layer

Benefits:

- Faster Builds

- Layer Reuse

- Reduced Storage

## What Is Docker Hub?

Docker Hub is a public image registry.

Examples:

ubuntu

nginx

mysql

redis

tomcat

Docker registries store Docker images for download and deployment.

## Image Tags

Tags identify image versions.

Examples:

nginx:latest

mysql:8.0

ubuntu:24.04

Best Practice:

Avoid using latest in production without version control.

## Image Lifecycle

Search Image

↓

Pull Image

↓

Store Locally

↓

Run Container

↓

Remove Image

## Local Image Repository

Pulled images are stored locally on the server.

Benefits:

- Faster Startup

- Reduced Downloads

- Better Performance

## Image Vs Container

Image:

Static

Template

Read Only

Container:

Running Instance

Dynamic

Writable Layer

## Real DevOps Example

Developer

↓

Dockerfile

↓

Docker Build

↓

Docker Image

↓

Docker Hub

↓

Jenkins

↓

Kubernetes

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
