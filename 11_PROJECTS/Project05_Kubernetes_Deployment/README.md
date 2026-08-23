# Project 05 - Kubernetes Deployment

## Project Title

Production-Style Spring Boot Application Deployment On Kubernetes

## Objective

Deploy and operate a containerized Java Spring Boot application using Kubernetes.

The implementation includes:

- Namespace
- Deployment
- ReplicaSet
- Pods
- ClusterIP Service
- ConfigMap
- Secret
- Readiness Probe
- Liveness Probe
- Startup Probe
- Resource Requests
- Resource Limits
- PersistentVolumeClaim
- Ingress
- Rolling Update
- Rollback
- Horizontal Pod Autoscaler Concepts
- Operational Troubleshooting

## Business Problem

Running an application as one manually managed container creates operational limitations.

Common problems include:

- Application downtime
- Manual restarts
- Inconsistent deployments
- Limited scalability
- Difficult rollback
- Missing health validation
- Configuration duplication
- Poor workload isolation

## Solution

Kubernetes manages the application by continuously reconciling the declared configuration with the actual cluster state.

The project declares:

- The required number of replicas
- The required container image
- Application configuration
- Resource requirements
- Health checks
- Internal networking
- External routing
- Update strategy

## Application Flow

User

↓

Ingress Controller

↓

Ingress Resource

↓

ClusterIP Service

↓

Spring Boot Pods

↓

Application Dependencies

## Deployment Flow

Developer

↓

GitHub Repository

↓

Container Registry

↓

Kubernetes Deployment

↓

ReplicaSet

↓

Application Pods

↓

Service

↓

Ingress

## Technologies Used

- Kubernetes
- kubectl
- Docker
- Java
- Spring Boot
- ConfigMap
- Secret
- PersistentVolumeClaim
- Ingress
- Helm
- Git
- GitHub

## Project Requirements

### Functional Requirements

- Application must run on Kubernetes
- At least two application replicas must be declared
- Application must be accessible through a Service
- Configuration must be externalized
- Sensitive values must not be committed
- Health probes must be configured
- Update and rollback must be demonstrated

### Non-Functional Requirements

- Availability
- Scalability
- Security
- Repeatability
- Observability
- Recoverability
- Maintainability

## Kubernetes Resources

### Namespace

Provides logical separation for project resources.

### Deployment

Manages the desired number of application Pods.

### ReplicaSet

Maintains the application replicas required by the Deployment.

### Service

Provides stable internal access to the application Pods.

### ConfigMap

Stores non-sensitive application configuration.

### Secret

References sensitive configuration.

### PersistentVolumeClaim

Requests persistent storage from the cluster.

### Ingress

Defines HTTP routing from outside the cluster to the Service.

### HorizontalPodAutoscaler

Represents automatic replica scaling based on configured metrics.

## Security Requirements

- Do not commit real Secret values
- Do not use the latest image tag
- Run the container as a non-root user
- Disable privilege escalation
- Drop unnecessary Linux capabilities
- Configure resource requests and limits
- Use read-only configuration where appropriate
- Apply namespace-level access controls in production
- Restrict public ingress
- Use TLS for production traffic
- Store production secrets in an approved secret-management platform
- Review container images before deployment

## Validation Criteria

The project is successful when:

- Cluster connection works
- Nodes report Ready
- Namespace exists
- ConfigMap is created
- Secret reference exists
- Deployment becomes Available
- Required replicas are Ready
- Service selects application Pods
- Service endpoints exist
- Readiness probe succeeds
- Liveness probe succeeds
- Application endpoint responds
- Rolling update completes
- Rollback restores the previous image
- Controlled failure is detected
- Recovery is validated
- Repository contains no credentials

## Portfolio Evidence

Capture:

- Cluster information
- Node status
- Applied manifests
- Deployment status
- Pod status
- Service status
- Endpoint mapping
- Probe configuration
- Application response
- Ingress configuration
- Rolling update
- Rollback
- Failure investigation
- Recovery validation
- GitHub repository

## Cost Control

When using AWS:

- Use an existing lab cluster when possible
- Avoid unnecessary LoadBalancer Services
- Avoid creating unused persistent volumes
- Review EKS cluster charges before starting
- Delete unused load balancers
- Delete unused EBS volumes
- Remove the namespace after collecting evidence
- Destroy the lab cluster when it is no longer required
- Confirm all files and screenshots are pushed to GitHub before cleanup

## Learning Outcomes

After completing this project, you should be able to:

- Deploy containerized applications
- Explain Kubernetes reconciliation
- Externalize configuration
- Configure application probes
- Configure resource controls
- Expose applications through Services
- Configure HTTP routing
- Perform rolling updates
- Perform rollbacks
- Troubleshoot failing workloads
- Explain the project during Kubernetes interviews
