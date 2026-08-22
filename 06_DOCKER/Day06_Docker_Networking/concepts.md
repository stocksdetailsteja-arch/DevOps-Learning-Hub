# Day 06 - Docker Networking Concepts

## Why Docker Networking?

Applications rarely run alone.

Example:

Frontend

↓

Backend

↓

Database

These components need communication.

## Docker Network Architecture

Container A

↓

Docker Network

↓

Container B

Docker networking enables secure communication between containers.

## Default Bridge Network

Docker creates a bridge network by default.

Example:

Container 1

↓

Bridge Network

↓

Container 2

Benefits:

- Isolation

- Simple Communication

- Easy Setup

The workbook specifically identifies Bridge networking as a key topic.

## Host Network

Container shares host networking stack.

Benefits:

- High Performance

- No Network Translation

Limitations:

- Reduced Isolation

## None Network

Container has no network access.

Use Cases:

- Security Testing

- Isolated Applications

## Port Mapping

Port Mapping allows external access.

Example:

Host:8080

↓

Container:80

Command:

docker run -p 8080:80 nginx

## Container Communication

Default Requirement:

Containers must share network.

Example:

Frontend

↓

Backend

↓

Database

All communicate using Docker networking.

## DNS Resolution

Docker automatically provides DNS services.

Example:

frontend

↓

backend

Instead of using IP addresses.

The workbook specifically mentions DNS concepts in networking.

## Custom Networks

Benefits:

- Better Isolation

- Easier Communication

- Cleaner Architecture

Example:

docker network create app-network

## Real World Example

Frontend Container

↓

Bridge Network

↓

Backend Container

↓

Database Container

Container names become DNS entries.

## Networking Flow

User

↓

Host Port

↓

Docker Network

↓

Container

↓

Application

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
