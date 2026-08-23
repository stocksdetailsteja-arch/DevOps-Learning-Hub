# Project 05 - Kubernetes Architecture

## Architecture Objective

Deploy a scalable and recoverable Spring Boot application using declarative Kubernetes resources.

## Request Flow

External Client

↓

Ingress Controller

↓

Ingress Rule

↓

ClusterIP Service

↓

Ready Application Pods

↓

Application Response

## Control Flow

kubectl Or CI/CD Pipeline

↓

Kubernetes API Server

↓

Deployment Controller

↓

ReplicaSet

↓

Scheduler

↓

Worker Node

↓

Kubelet

↓

Container Runtime

↓

Application Pod

## Configuration Flow

ConfigMap

↓

Environment Variables

↓

Application Container

Secret Reference

↓

Environment Variables

↓

Application Container

## Health Management Flow

Kubelet

↓

Startup Probe

↓

Readiness Probe

↓

Service Endpoint Registration

↓

Liveness Probe

↓

Container Restart When Required

## Deployment Components

### Control Plane

Responsible for:

- API management
- Scheduling
- Controller reconciliation
- Cluster state storage

### Worker Node

Runs:

- Kubelet
- Container runtime
- Application Pods
- Networking components

### Deployment

Declares:

- Replica count
- Pod template
- Image
- Update strategy
- Resource configuration
- Probe configuration

### Service

Provides:

- Stable virtual address
- Service discovery
- Load distribution across ready Pods

### Ingress

Provides:

- Host-based routing
- Path-based routing
- External HTTP access

An Ingress resource requires an Ingress controller before its rules can be fulfilled.

## High Availability Design

Application availability is improved through:

- Multiple replicas
- Readiness probes
- Rolling updates
- Pod rescheduling
- Service endpoint selection
- Pod anti-affinity as a future enhancement
- Multi-node deployment

## Security Boundaries

External Network

↓

Ingress Layer

↓

Service Layer

↓

Application Pods

↓

Application Dependencies

## Failure Points

- Container image unavailable
- Pod scheduling failure
- Application startup failure
- Readiness probe failure
- Liveness probe failure
- Service selector mismatch
- Missing Service endpoints
- Ingress controller unavailable
- Invalid Ingress backend
- Persistent storage unavailable
- Resource limit too low
- Node unavailable
- Secret missing

## Recovery Mechanisms

- ReplicaSet reconciliation
- Container restart
- Pod replacement
- Rolling update
- Rollout undo
- Multiple replicas
- Persistent storage
- Declarative reapplication

## Design Decisions

### Multiple Replicas

Multiple replicas reduce dependence on one Pod.

### ClusterIP Service

The application remains internally exposed through a stable Service.

### Ingress For External HTTP

Ingress separates external routing from the application workload.

### Readiness Probe

A Pod should receive traffic only after the application is ready.

### Liveness Probe

A container can be restarted if the application enters an unrecoverable state.

### Startup Probe

Slow application startup can be handled without premature liveness failures.

### Fixed Image Version

A fixed image tag improves reproducibility and rollback.

### Resource Requests And Limits

Requests help scheduling.

Limits constrain resource consumption.

### External Configuration

ConfigMaps and Secret references avoid creating environment-specific images.

## Future Enhancements

- PodDisruptionBudget
- NetworkPolicy
- TLS
- External Secrets
- GitOps
- Prometheus monitoring
- Distributed tracing
- Service mesh
- Helm packaging
- Horizontal and vertical
