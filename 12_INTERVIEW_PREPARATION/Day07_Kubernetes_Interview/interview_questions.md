# Kubernetes Interview Questions

## Beginner Level

### What Is Kubernetes?

Kubernetes is a container orchestration platform used to manage containerized applications.

### What Is Container Orchestration?

Container orchestration manages deployment, networking, scaling and recovery of containerized workloads.

### What Is A Pod?

A Pod is the smallest deployable Kubernetes compute object.

### What Is A Deployment?

A Deployment manages declarative application updates through ReplicaSets.

### What Is A ReplicaSet?

A ReplicaSet maintains the required number of matching Pods.

### What Is A Service?

A Service provides stable access to selected Pods.

### What Is A Namespace?

A namespace provides logical resource separation.

### What Is kubectl?

kubectl is a command-line client used to interact with the Kubernetes API.

## Intermediate Level

### Explain Kubernetes Architecture.

The control plane manages state and scheduling.

Worker nodes run application Pods.

Important components include:

- API server
- etcd
- Scheduler
- Controller manager
- Kubelet
- Container runtime

### Deployment Versus ReplicaSet?

A ReplicaSet maintains Pod replicas.

A Deployment manages ReplicaSets and application rollouts.

### ClusterIP Versus NodePort Versus LoadBalancer?

ClusterIP:

- Internal cluster access

NodePort:

- Exposes a port on nodes

LoadBalancer:

- Requests an external load balancer in supported environments

### ConfigMap Versus Secret?

ConfigMap:

- Non-sensitive configuration

Secret:

- Sensitive configuration material requiring controlled access

### Readiness Versus Liveness?

Readiness:

- Determines whether a Pod should receive traffic

Liveness:

- Determines whether a container should be restarted

### What Is A Startup Probe?

A startup probe provides startup-time health handling for applications that may require additional initialization time.

### What Is A PersistentVolumeClaim?

A PVC requests persistent storage for a workload.

### What Is A StorageClass?

A StorageClass represents a storage provisioning category.

### What Is Ingress?

Ingress defines HTTP and HTTPS routing to Services and requires an appropriate controller.

### What Is Helm?

Helm packages Kubernetes resources as reusable Charts and manages release revisions.

## Advanced Level - 5+ Years

### A Pod Is Running But The Application Is Unavailable. What Do You Check?

Check:

- Pod readiness
- Container logs
- Application listening address
- Service selector
- Service targetPort
- Endpoints
- NetworkPolicy
- Ingress
- DNS

### A Pod Is In CrashLoopBackOff. What Is Your Investigation Sequence?

- Check Pod state
- Describe the Pod
- Review current logs
- Review previous container logs
- Review events
- Validate command and arguments
- Validate ConfigMap and Secret references
- Validate probes
- Check termination reason
- Check memory limits
- Review dependency availability

### A Pod Is Pending. What Would You Check?

- Scheduler events
- Resource requests
- Node capacity
- Node selector
- Affinity
- Anti-affinity
- Taints and tolerations
- PVC state
- Admission policy

### What Causes ImagePullBackOff?

Possible causes:

- Image name is wrong
- Tag does not exist
- Registry authentication failed
- Image-pull Secret is missing
- Registry is unreachable
- Registry permissions are insufficient

### Service Has No Endpoints. What Is The Most Likely Investigation Path?

- Show Pod labels
- Review Service selector
- Check Pod readiness
- Review target port
- Inspect EndpointSlices
- Confirm namespace

### Why Should Liveness Not Depend Directly On A Remote Database?

A remote database failure cannot normally be repaired by repeatedly restarting application containers.

Liveness should identify a local application state that restart can potentially correct.

### How Do You Achieve High Availability?

- Multiple replicas
- Multiple worker nodes
- Readiness probes
- Pod anti-affinity
- PodDisruptionBudget
- Resource requests
- Capacity headroom
- Rolling updates
- Monitoring
- Tested rollback

Your internal workbook recommends replicas, probes, disruption budgets, resource limits and anti-affinity to improve reliability. 【1-6e14e5】【2-90c085】

### How Do You Secure Kubernetes?

- Use RBAC
- Use namespaces
- Use NetworkPolicies
- Use restricted workload settings
- Run non-root containers
- Drop unnecessary capabilities
- Restrict ServiceAccount permissions
- Scan images
- Protect Secrets
- Encrypt sensitive data
- Audit access
- Pin image versions

Your internal workbook specifically recommends RBAC, namespaces, NetworkPolicies and restricted workloads. 【1-6e14e5】【2-90c085】

### How Do You Avoid Configuration Drift?

- Store manifests and Charts in Git
- Use reviewed pull requests
- Reconcile using automation
- Avoid direct production edits
- Compare live and declared state
- Document emergency changes
- Reconcile Git after emergency action

Your internal workbook recommends storing manifests and Charts in Git and reconciling them through automation. 【1-6e14e5】【2-90c085】

### How Do You Manage Secrets?

- Use approved external secret integrations
- Restrict RBAC
- Enable encryption controls
- Rotate credentials
- Avoid plaintext Git storage
- Prevent values from appearing in logs
- Audit Secret access

Your internal workbook recommends external secret integrations and Kubernetes Secrets with encryption and access controls. 【1-6e14e5】【2-90c085】

### How Do You Scale Kubernetes Workloads?

Workload scaling:

- Increase Deployment replicas
- Use HPA when metrics and resource configuration support it

Cluster scaling:

- Add or remove worker-node capacity through the applicable infrastructure mechanism

Your internal workbook distinguishes scaling Deployments or HPA from scaling cluster nodes. 【1-6e14e5】【2-90c085】

### How Do You Recover From A Bad Deployment?

- Assess user impact
- Stop further promotion
- Review rollout status
- Review rollout history
- Confirm last known good revision
- Use Deployment rollback or Helm rollback as applicable
- Monitor rollout
- Validate Pods, endpoints and application health
- Reconcile Git
- Document root cause

Your internal workbook recommends `rollout undo`, versioned images and Helm rollback for recovery. 【1-6e14e5】【2-90c085】

### What Evidence Do You Collect During A Kubernetes Incident?

- Timestamp
- Namespace
- Deployment name
- Image version
- Current Pod state
- Restart count
- Pod description
- Current logs
- Previous logs
- Events
- ReplicaSet status
- Service selectors
- Endpoints
- Ingress state
- Node conditions
- Resource usage
- Recent changes
- Rollout history
- Monitoring data

### Explain A Production Incident.

Situation:

A release completed, but users received HTTP errors.

Investigation:

- Pods were Running
- Readiness was successful
- Service existed
- Service had no endpoints

Root Cause:

The Service selector did not match the labels in the new Pod template.

Resolution:

- Corrected the selector
- Reapplied the manifest
- Verified EndpointSlices
- Validated application response
- Added selector validation to deployment checks

### How Would You Explain Kubernetes In A Project Interview?

Situation:

The application needed scalable and recoverable deployment.

Task:

Design a Kubernetes workload with networking, configuration, health management and rollback.

Action:

Created version-controlled Deployment, Service, ConfigMap, Secret references, probes, resources, storage and routing configuration.

Tested rolling updates, Pod replacement, endpoint failures and rollback.

Result:

Produced a reproducible application platform with health validation, recovery procedures, operational evidence and troubleshooting documentation.
