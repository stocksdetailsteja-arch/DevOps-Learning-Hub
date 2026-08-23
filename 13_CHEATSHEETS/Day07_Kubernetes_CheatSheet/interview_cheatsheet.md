# Kubernetes Interview Cheatsheet

## What Is Kubernetes?

Container orchestration platform.

Manages deployment, scaling and operations of containers. 【1-c51f2a】【2-5e71c8】

## Kubernetes Architecture

kubectl

↓

API Server

↓

etcd

↓

Scheduler

↓

Controller Manager

↓

Worker Nodes

↓

Pods

## What Is Pod?

Smallest deployable Kubernetes object.

## What Is ReplicaSet?

Maintains desired number of pod replicas.

## What Is Deployment?

Manages ReplicaSets and rolling updates.

## Deployment Vs ReplicaSet

Deployment:

Updates + Rollbacks

ReplicaSet:

Replica Management Only

## What Is StatefulSet?

Used for stateful applications.

Examples:

- MySQL
- PostgreSQL
- MongoDB

## What Is DaemonSet?

Runs one pod per node.

Examples:

- Monitoring Agents
- Log Collectors

## What Is Service?

Provides stable access to Pods.

## Service Types

ClusterIP

NodePort

LoadBalancer

## ClusterIP

Internal Communication.

## NodePort

Exposes service via node port.

## LoadBalancer

External Access.

## What Is Ingress?

HTTP/HTTPS Routing Layer.

## ConfigMap

Stores non-sensitive configuration.

## Secret

Stores sensitive information.

## What Is PV?

Persistent Volume.

## What Is PVC?

Persistent Volume Claim.

## What Is HPA?

Horizontal Pod Autoscaler.

Automatically scales Pods.

## HPA Scaling

CPU

Memory

Custom Metrics

## What Is RBAC?

Role Based Access Control.

Controls access.

## What Is Helm?

Package Manager for Kubernetes.

## What Is Namespace?

Logical separation of resources.

## What Are Probes?

### Liveness Probe

Checks if Pod is alive.

### Readiness Probe

Checks if Pod can receive traffic.

### Startup Probe

Checks startup state.

## Rollout Vs Rollback

Rollout:

Deploy New Version

Rollback:

Restore Previous Version

## Kubernetes Security

- RBAC
- Namespaces
- Network Policies
- Secrets

Your Kubernetes workbook specifically recommends RBAC, namespaces and network policies to improve security. 【1-c51f2a】【2-5e71c8】
