# Day 09 - Kubernetes Project Interview Questions

## Basic Questions

### Q1. What Resources Are Used In This Project?

- Namespace

- ConfigMap

- Secret

- PVC

- Deployment

- ReplicaSet

- Pods

- Service

- Ingress

### Q2. Why Use A Deployment?

A Deployment manages application Pods, replica count, updates, and rollout history. Kubernetes Deployments also replace application instances when a hosting node fails or is removed.

### Q3. Why Use A Service?

A Service provides stable network access to matching Pods.

### Q4. Why Use A ConfigMap?

A ConfigMap separates non-sensitive configuration from the application image.

### Q5. Why Use A Secret?

A Secret references sensitive values separately from application code.

## Intermediate Questions

### Q1. Why Is A Namespace Used?

A Namespace logically groups and isolates project resources.

### Q2. How Does A Service Find Application Pods?

The Service selector matches labels assigned to the Pods.

### Q3. What Happens When A Pod Is Deleted?

The Deployment and ReplicaSet create a replacement Pod to restore the desired replica count.

### Q4. Why Use A PVC?

A PVC requests storage that can survive individual Pod recreation.

### Q5. Why Use Ingress?

Ingress provides centralized HTTP or HTTPS routing to Kubernetes Services.

## Advanced Questions For 5+ Years Experience

### Q1. The Deployment Is Available, But The Service Has No Endpoints. What Do You Check?

Service selector

Pod labels

Namespace

Pod readiness

Service port

Target port

Endpoint objects

Deployment template labels

The most common root cause is a mismatch between the Service selector and Pod labels.

### Q2. The Ingress Returns 502 Or 503. What Do You Investigate?

Ingress Controller health

Ingress rules

Ingress class

Service availability

Service endpoints

Pod readiness

Target port

Application listener

Controller logs

NetworkPolicies

Troubleshoot from Ingress to Service to endpoints to Pods.

### Q3. A Rolling Update Is Stuck. What Do You Check?

Rollout status

New Pod status

Pod events

Image pull

Readiness probe

Resource requests

Node capacity

Deployment strategy

maxUnavailable

maxSurge

Do not remove healthy old Pods manually before confirming the failure.

### Q4. How Would You Roll Back A Failed Release?

Stop additional changes

Review rollout history

Identify the last known-good revision

Run rollout undo

Monitor rollout status

Validate Pods

Validate Service endpoints

Validate application health

Monitor logs and metrics

Document the incident

### Q5. How Would You Secure This Project?

- Dedicated Namespace

- Least-privilege RBAC

- Restricted Secret access

- Encryption at rest

- External secret integration

- Non-root containers

- Read-only root filesystem where compatible

- Resource requests and limits

- NetworkPolicies

- Approved images

- Image scanning

- TLS at Ingress

- Audit logging

### Q6. How Would You Integrate This Project With Jenkins?

Checkout manifests

Build and test application

Build container image

Scan image

Push versioned image

Update Deployment manifest or release value

Apply to a test Namespace

Monitor rollout

Run health validation

Require approval where applicable

Deploy to production

Roll back when validation fails

### Q7. Application Configuration Changed, But Pods Still Use Old Values. Why?

Possible causes:

- Pods were not restarted

- Application cached configuration

- Wrong ConfigMap referenced

- Wrong Namespace

- Environment variable values were fixed at container startup

- Volume-mounted configuration was not reloaded by the application

The action depends on how the application consumes configuration.

### Q8. PVC Is Pending. What Do You Check?

StorageClass name

Default StorageClass

Requested capacity

Access mode

Provisioner

Storage quota

Pod scheduling mode

PVC events

Cloud-storage permissions

Availability-zone compatibility

### Q9. The Pipeline Reports Success, But Users Cannot Reach The Application. What Was Missing?

The pipeline validated manifest application but did not validate the runtime path.

Required validation includes:

- Rollout completion

- Pod readiness

- Service endpoints

- Ingress routing

- DNS

- TLS

- Application health response

### Q10. How Do You Prevent Configuration Drift?

- Store manifests in Git

- Review changes through pull requests

- Avoid uncontrolled manual edits

- Use CI/CD or GitOps reconciliation

- Separate environment-specific values

- Use reusable manifests, Helm, or Kustomize where appropriate

Your Kubernetes workbook recommends storing manifests or charts in Git and reconciling changes through automation.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
