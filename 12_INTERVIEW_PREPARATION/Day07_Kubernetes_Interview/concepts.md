# Kubernetes Interview Concepts

## What Is Kubernetes?

Kubernetes is a platform for managing containerized workloads and services through declarative configuration and automation.

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

Kubelet

↓

Container Runtime

↓

Pods

## Control Plane

The control plane manages the cluster and works to maintain the requested state.

## API Server

The API server is the entry point for Kubernetes API operations.

Clients such as kubectl communicate with the cluster through the API server.

## etcd

etcd stores Kubernetes cluster state and configuration.

## Scheduler

The scheduler selects a suitable node for an unscheduled Pod.

Scheduling decisions may consider:

- Resource requests
- Node selectors
- Affinity
- Anti-affinity
- Taints
- Tolerations
- Available capacity

## Controller Manager

The controller manager runs controllers that reconcile desired and current state.

## Worker Node

A worker node runs application workloads.

Important components include:

- Kubelet
- Container runtime
- Networking components
- Pods

## Kubelet

The Kubelet ensures that assigned containers run according to their Pod specifications.

## Container Runtime

The container runtime executes containers on worker nodes.

## Desired State

Desired state defines how the system should operate.

Examples:

- Three replicas
- Specific container image
- Required Service
- CPU request
- Readiness probe

## Reconciliation

Controllers compare desired state with current state and attempt to correct differences.

## Pod

A Pod is the smallest deployable compute object in Kubernetes.

A Pod may contain:

- Main application container
- Sidecar container
- Init containers
- Shared volumes
- Shared network namespace

## ReplicaSet

A ReplicaSet maintains the required number of matching Pods.

## Deployment

A Deployment manages declarative updates for application Pods through ReplicaSets.

Common operations:

- Scale
- Rollout
- Pause
- Resume
- Rollback

## StatefulSet

A StatefulSet is used when workloads require stable identity or ordered lifecycle behaviour.

Common use cases include stateful applications.

## DaemonSet

A DaemonSet runs matching Pods across selected nodes.

Common use cases:

- Log collectors
- Monitoring agents
- Node-level networking components

## Job

A Job runs workload tasks to completion.

## CronJob

A CronJob creates Jobs according to a schedule.

## Service

A Service provides stable access to matching Pods selected through labels.

## ClusterIP

ClusterIP provides internal cluster access.

## NodePort

NodePort exposes a Service through a port on cluster nodes.

## LoadBalancer

LoadBalancer requests an external load balancer in supported infrastructure environments.

## Ingress

Ingress defines HTTP and HTTPS routing to Services.

An Ingress controller is required to implement Ingress routing.

## Labels

Labels identify and organize Kubernetes resources.

## Selectors

Selectors connect resources.

Examples:

- Deployment selector to Pod labels
- Service selector to Pod labels

## ConfigMap

A ConfigMap stores non-sensitive configuration.

Examples:

- Application profile
- Log level
- Endpoint name
- Feature setting

## Secret

A Secret represents sensitive configuration.

Production secret protection also requires:

- Access control
- Encryption
- Approved secret-management workflow
- Rotation
- Auditability

## Volume

A volume provides storage accessible to containers in a Pod.

## PersistentVolume

A PersistentVolume represents storage available to the cluster.

## PersistentVolumeClaim

A PersistentVolumeClaim requests storage for a workload.

## StorageClass

A StorageClass defines a category or provisioning mechanism for storage.

## Readiness Probe

A readiness probe determines whether a Pod should receive Service traffic.

## Liveness Probe

A liveness probe detects when a container needs restart.

## Startup Probe

A startup probe allows slow-starting applications to initialize before other probe behaviour becomes active.

## Resource Request

A resource request declares the amount of CPU or memory required for scheduling.

## Resource Limit

A resource limit constrains container resource consumption.

## HorizontalPodAutoscaler

HPA adjusts workload replica count using configured metrics and targets.

## Taint

A taint discourages or prevents Pods from scheduling on a node unless they have a matching toleration.

## Toleration

A toleration allows a Pod to be scheduled on a node with a matching taint.

## Node Selector

A node selector constrains a Pod to nodes with matching labels.

## Affinity

Affinity expresses placement preferences or requirements.

## Anti-Affinity

Anti-affinity can 
