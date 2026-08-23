# Day 05 - Kubernetes Services Concepts

## Why Services?

Pods are temporary.

Pod A

↓

Deleted

↓

New Pod Created

↓

New IP Address

Applications need a permanent endpoint.

Services solve this problem.

## What Is A Service?

A Service is a Kubernetes object that provides stable network access to Pods.

Benefits:

- Stable IP

- Service Discovery

- Load Balancing

- Reliable Communication

## Service Architecture

User

↓

Service

↓

Pods

↓

Application

## Service Discovery

Kubernetes automatically provides DNS-based service discovery.

Example:

frontend

↓

backend-service

↓

database-service

Applications use service names instead of Pod IPs.

## ClusterIP Service

Default Service Type.

Internal Cluster Access Only.

Example:

Frontend Pod

↓

Backend Service

↓

Backend Pods

Use Cases:

- Internal APIs

- Databases

- Microservices

## NodePort Service

Exposes application through worker node port.

Example:

User

↓

Node IP:30080

↓

Application

Port Range:

30000-32767

Use Cases:

- Testing

- Development

- Lab Environments

## LoadBalancer Service

Creates cloud load balancer.

Example:

Internet

↓

Cloud Load Balancer

↓

Kubernetes Service

↓

Pods

Use Cases:

- Production Applications

- Public Services

## ExternalName Service

Maps Kubernetes service to external DNS.

Example:

Application

↓

ExternalName

↓

external.database.com

Use Cases:

- External Databases

- Third-Party APIs

## Endpoints

Endpoints identify Pods behind a Service.

Example:

Service

↓

Pod1

Pod2

Pod3

Service routes traffic automatically.

## Load Balancing

User Requests

↓

Service

↓

Pod1

Pod2

Pod3

Traffic distributed across Pods.

## Real World Example

Frontend

↓

Service

↓

Backend Pods

↓

Database Service

↓

Database Pods

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
