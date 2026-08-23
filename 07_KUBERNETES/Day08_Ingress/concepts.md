# Day 08 - Kubernetes Ingress Concepts

## Why Ingress?

Without Ingress:

LoadBalancer Service

↓

Application 1

LoadBalancer Service

↓

Application 2

LoadBalancer Service

↓

Application 3

Expensive and difficult to manage.

## What Is Ingress?

Ingress is a Kubernetes object that manages external HTTP/HTTPS traffic.

Benefits:

- Centralized Access

- Host Routing

- Path Routing

- TLS Support

- Cost Optimization

## Ingress Architecture

Internet

↓

Ingress Controller

↓

Ingress Resource

↓

Services

↓

Pods

The workbook identifies Ingress Controller and routing concepts as primary topics.

## What Is An Ingress Controller?

Ingress resource alone cannot process traffic.

An Ingress Controller is required.

Examples:

- NGINX Ingress Controller

- AWS Load Balancer Controller

- Traefik

- HAProxy

## Host-Based Routing

Different domains route traffic to different applications.

Example:

app.company.com

↓

Application A

admin.company.com

↓

Application B

The workbook explicitly highlights host-based routing concepts.

## Path-Based Routing

Single domain

↓

Different paths

Example:

company.com/app

↓

Application A

company.com/admin

↓

Application B

The workbook explicitly covers path routing.

## TLS / SSL

Purpose:

Encrypt Traffic

Example:

User

↓

HTTPS

↓

Ingress

↓

Application

Benefits:

- Data Protection

- Secure Communication

- Compliance

## Load Balancing

User Requests

↓

Ingress

↓

Service

↓

Pod1

Pod2

Pod3

Traffic automatically distributed.

## Ingress Workflow

User

↓

DNS

↓

Ingress Controller

↓

Ingress Resource

↓

Service

↓

Pods

## Real World Example

www.company.com

↓

Ingress

↓

Frontend Service

↓

Frontend Pods

api.company.com

↓

API Service

↓

Backend Pods

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
