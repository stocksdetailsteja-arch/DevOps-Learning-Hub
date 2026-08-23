# Project 05 - Kubernetes Concepts

## Kubernetes

Kubernetes is a container orchestration platform that manages containerized workloads through desired state and reconciliation.

## Desired State

Desired state describes how the workload should operate.

Examples:

- Three replicas
- Specific image version
- Required CPU request
- Required Service
- Required ConfigMap

## Reconciliation

Controllers continuously compare:

- Desired state
- Actual state

When the states differ, Kubernetes attempts to correct the difference.

## Pod

A Pod is the smallest deployable Kubernetes unit.

A Pod can contain:

- One main application container
- Sidecar containers
- Init containers
- Shared storage
- Shared network namespace

## Deployment

A Deployment manages application rollout through ReplicaSets.

The Deployment declares:

- Pod template
- Replica count
- Update strategy
- Image version

## ReplicaSet

A ReplicaSet maintains the required number of matching Pods.

Deployments usually manage ReplicaSets automatically.

## Service

A Service provides stable networking for a set of Pods selected using labels.

## ClusterIP

ClusterIP exposes a Service within the cluster.

## NodePort

NodePort opens a port on cluster nodes.

It is often suitable for controlled labs but is usually not the preferred final external routing design.

## LoadBalancer

A LoadBalancer Service can request an external load balancer from a supported infrastructure provider.

## Ingress

Ingress defines HTTP and HTTPS routing to Kubernetes Services.

An Ingress controller is required for an Ingress resource to have an operational effect.

## ConfigMap

A ConfigMap stores non-sensitive configuration.

Examples:

- Application environment
- Feature flags
- Log level
- Service URLs

## Secret

A Secret stores sensitive values inside Kubernetes.

Important:

Base64 representation alone is not a complete production secret-management strategy.

## Readiness Probe

A readiness probe determines whether a Pod is ready to receive Service traffic.

## Liveness Probe

A liveness probe detects when a container should be restarted.

## Startup Probe

A startup probe protects slow-starting applications from premature liveness checks.

## Resource Request

A request tells the scheduler the resource amount required by a container.

## Resource Limit

A limit constrains the maximum resource consumption of a container.

## PersistentVolume

A PersistentVolume represents storage made available to the cluster.

## PersistentVolumeClaim

A PersistentVolumeClaim requests storage for a workload.

## StorageClass

A StorageClass describes a storage provisioning class.

## Rolling Update

A rolling update gradually replaces old Pods with new Pods.

## Rollback

A rollback restores a previous Deployment revision.

## HorizontalPodAutoscaler

The HorizontalPodAutoscaler changes the number of replicas based on configured metrics and thresholds.

## Labels

Labels identify and organize Kubernetes objects.

## Selectors

Selectors connect related resources.

Example:

- Deployment Pod labels
- Service selector
- Monitoring selection

## Namespace

A Namespace provides logical resource separation.

## Helm

Helm packages Kubernetes resources into reusable Charts.

Important Helm concepts:

- Chart
- Values
- Template
- Release
- Upgrade
- Rollback

## Reproducibility

Manifests should be stored in Git and applied consistently.

## Configuration Drift

Direct manual changes can create differences between:

- Git configuration
- Live cluster configuration

Production environments should reconcile changes from reviewed source-controlled configuration.
``
