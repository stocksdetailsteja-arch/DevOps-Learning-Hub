# Day 04 - Docker Containers Concepts

## What Is A Docker Container?

A Docker Container is a running instance of a Docker Image.

Example:

Docker Image

↓

Run

↓

Docker Container

## Image Vs Container

Image:

- Template

- Read Only

- Static

Container:

- Running Instance

- Writable Layer

- Dynamic

## Container Lifecycle

Create

↓

Run

↓

Stop

↓

Restart

↓

Delete

This is the complete container lifecycle used in production environments.

## Creating Containers

Examples:

docker run nginx

docker run ubuntu

docker run redis

Container is created from image.

## Running Containers

A running container executes application code.

Examples:

- Nginx Web Server

- MySQL Database

- Redis Cache

- Java Applications

## Interactive Containers

Interactive containers allow shell access.

Example:

docker exec -it container_name bash

Purpose:

Troubleshooting

Configuration

Validation

## Container Logs

Logs help monitor application execution.

Used For:

- Debugging

- Monitoring

- Troubleshooting

## Container States

Created

Running

Paused

Exited

Removed

## Real DevOps Example

Developer

↓

Docker Image

↓

Container

↓

Application Running

↓

Monitoring

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
