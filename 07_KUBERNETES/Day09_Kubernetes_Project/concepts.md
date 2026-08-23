# Day 09 - Kubernetes Project Concepts

## End-To-End Kubernetes Workflow

Developer

↓

Source Repository

↓

CI Pipeline

↓

Container Image

↓

Container Registry

↓

Kubernetes Deployment

↓

Pods

↓

Service

↓

Ingress

↓

Users

Kubernetes consumes containerized applications and manages their desired state across cluster nodes. A Deployment declares the image and replica count and continuously manages the resulting application instances.

## Why Use Declarative Manifests?

Declarative YAML files describe the desired state of Kubernetes resources.

Benefits:

- Version control

- Code review

- Repeatability

- Auditability

- Automated deployment

- Reduced manual configuration

- Easier environment comparison

## Namespace

A Namespace logically separates Kubernetes resources.

Example:

devops-project

Resources created inside the project Namespace include:

- Deployment

- Pods

- Service

- ConfigMap

- Secret

- PVC

- Ingress

## ConfigMap

A ConfigMap stores non-sensitive application configuration.

Example values:

- APP_NAME

- APP_ENV

- LOG_LEVEL

- API_URL

Your Kubernetes workbook recommends ConfigMaps and environment-specific values for managing configuration safely.

## Secret

A Secret stores sensitive configuration references.

Example values:

- Database Username

- Database Password

- API Token

- Certificate Material

Important:

Kubernetes Secret usage must be combined with:

- Encryption controls

- RBAC

- Restricted access

- Secret rotation

- External secret integration where required

Your workbook recommends external secret integrations and Kubernetes Secrets with encryption and access controls.

## PersistentVolumeClaim

A PersistentVolumeClaim requests persistent storage.

Application Pod

↓

PVC

↓

PersistentVolume

↓

Storage Backend

The PVC separates the application's storage request from the underlying storage implementation.

## Deployment

A Deployment defines and manages application Pods.

Deployment

↓

ReplicaSet

↓

Pods

A Deployment creates and updates application instances and replaces failed instances to maintain the desired state.

## Replica Count

Example:

replicas: 3

Meaning:

Kubernetes attempts to keep three matching application Pods available.

If one Pod is deleted:

Deployment

↓

ReplicaSet

↓

Replacement Pod

↓

Desired State Restored

## Labels And Selectors

Labels identify Kubernetes resources.

Example:

app: project-app

Selectors connect resources.

Deployment Selector

↓

Pod Labels

Service Selector

↓

Pod Labels

If labels and selectors do not match, the Service can exist without usable endpoints.

## Service

A Service provides stable internal access to a group of Pods.

Service

↓

Selector

↓

Matching Pods

↓

Endpoints

The Service protects clients from changes to individual Pod IP addresses.

## Ingress

Ingress provides host-based or path-based HTTP/HTTPS routing.

User

↓

Ingress Controller

↓

Ingress Resource

↓

Service

↓

Pods

An Ingress resource requires an appropriate Ingress Controller to process the routing rules. Your workbook specifically identifies the Ingress Controller, host, path, and TLS concepts as required learning topics.

## Scaling

Scaling changes the number of replicas.

Example:

2 Pods

↓

Scale To 4

↓

4 Pods

Scaling can improve workload capacity, but cluster resources must be available.

## Rolling Update

Rolling Update gradually replaces existing Pods with Pods using the updated specification.

Old Image

↓

New Pods Created

↓

Readiness Validated

↓

Old Pods Removed

↓

New Version Active

## Rollback

If a rollout fails:

Failed Revision

↓

Rollout Undo

↓

Previous Revision

↓

Application Validation

Rollback should use a known-good, versioned image.

## Validation Strategy

Validate the project at multiple layers:

Resource creation

Pod readiness

Deployment rollout

Service endpoints

DNS resolution

Ingress routing

Application response

Persistent storage

Logs and events

Rollback recovery

## Troubleshooting Sequence

Desired State

↓

Current State

↓

Events

↓

Pod Description

↓

Container Logs

↓

Probes

↓

Image

↓

Scheduling

↓

Service Endpoints

↓

DNS

↓

Network

This investigation order aligns with the troubleshooting sequence in your Kubernetes workbook.

## Production Design Considerations

A production implementation should consider:

- Multiple replicas

- Resource requests and limits

- Readiness probes

- Liveness probes

- Startup probes where required

- Pod security settings

- NetworkPolicies

- RBAC

- Versioned images

- Persistent backups

- Monitoring

- Centralized logging

- Rolling updates

- Rollback

- PodDisruptionBudgets where required

- Multi-zone scheduling where supported

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
