# Day 08 - Docker Compose Concepts

## What Is Docker Compose?

Docker Compose is a tool used to define and run multi-container applications.

Instead of:

docker run app

docker run mysql

docker run redis

Docker Compose manages everything together.

The workbook identifies Compose as the solution for multi-container applications.

## Why Docker Compose?

Without Compose:

Run Container 1

↓

Run Container 2

↓

Run Container 3

↓

Configure Networking

↓

Configure Volumes

With Compose:

Single File

↓

Single Command

↓

Entire Application Starts

## What Is compose.yaml?

compose.yaml defines:

- Services

- Networks

- Volumes

- Environment Variables

- Container Relationships

## Compose Architecture

Application

↓

compose.yaml

↓

Docker Compose

↓

Service 1

Service 2

Service 3

## Services

Each container is defined as a service.

Example:

frontend

backend

database

## Service Communication

Docker Compose creates a network automatically.

Example:

frontend

↓

backend

↓

database

Services communicate using service names.

## Compose Volumes

Used for persistent storage.

Example:

mysql

↓

Volume

↓

Database Data

## Compose Networks

Used for service communication.

Benefits:

- Isolation

- DNS Resolution

- Simpler Management

## Environment Variables

Common Usage:

DATABASE_URL

USERNAME

PASSWORD

APP_ENV

## Compose Lifecycle

Create

↓

Start

↓

Stop

↓

Restart

↓

Destroy

## Real DevOps Example

Frontend

↓

Backend API

↓

MySQL Database

↓

Docker Compose

↓

Single Deployment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
