# Project 05 - Kubernetes Interview Questions

## Beginner Level

### What problem does this project solve?

It automates deployment, availability, configuration, networking, health validation, updates, and recovery for a containerized application.

### What is a Pod?

A Pod is the smallest deployable Kubernetes unit and contains one or more closely related containers.

### What is a Deployment?

A Deployment manages declarative application rollout through ReplicaSets.

### What is a Service?

A Service provides stable networking for selected Pods.

### What is a ConfigMap?

A ConfigMap stores non-sensitive application configuration.

### What is a Secret?

A Secret stores sensitive configuration that workloads can reference.

## Intermediate Level

### Why not expose Pods directly?

Pods can be replaced and receive new addresses.

A Service provides a stable access point for matching Pods.

### What is the difference between readiness and liveness probes?

Readiness determines whether a Pod should receive traffic.

Liveness determines whether a container should be restarted.

### What is a startup probe?

A startup probe allows a slow-starting application to complete initialization before liveness and readiness behaviour causes failure handling.

### How does a Service find Pods?

Using label selectors.

### Why use resource requests?

The scheduler uses requests when deciding where a Pod can run.

### Why use resource limits?

Limits constrain container resource consumption.

### What is a rolling update?

A rolling update replaces old Pods gradually with Pods from a new template.

### How do you rollback a Deployment?

Use rollout history to identify revisions and rollout undo to restore an earlier revision.

## Advanced Level - 5+ Years

### Explain The Complete Request Flow.

External traffic reaches the Ingress controller.

The Ingress rule selects the Kubernetes Service.

The Service forwards traffic to Ready Pods matching its selector.

The application container processes the request.

### What Happens When A Pod Fails?

The Deployment-managed ReplicaSet observes that actual replicas are below desired replicas and creates a replacement Pod.

### Why Can A Pod Be Running But The Service Still Be Unavailable?

Possible reasons include:

- Pod is not Ready
- Service selector mismatch
- Service targetPort mismatch
- Application is not listening
- NetworkPolicy blocks traffic

### How Would You Design For High Availability?

- Use multiple replicas
- Use multiple worker nodes
- Configure readiness probes
- Configure rolling updates
- Use Pod anti-affinity
- Use PodDisruptionBudget
- Maintain capacity headroom
- Monitor application and cluster signals

### How Would You Prevent Deployment Downtime?

- Use more than one replica
- Configure readiness probes
- Set maxUnavailable appropriately
- Use graceful termination
- Validate new Pods before old Pods terminate
- Monitor rollout
- Maintain rollback capability

### Why Should Liveness Not Depend Directly On A Remote Database?

A remote database outage could cause all application containers to restart repeatedly even though restarting cannot resolve the database failure.

Liveness should identify unrecoverable local application failure.

### How Do You Troubleshoot CrashLoopBackOff?

- Review current logs
- Review previous container logs
- Describe the Pod
- Review events
- Validate command and arguments
- Validate ConfigMap and Secret references
- Review probes
- Review resource termination reason

### How Do You Troubleshoot Pending Pods?

- Review scheduler events
- Check node resources
- Check requests
- Check taints and tolerations
- Check selectors and affinity
- Check PersistentVolumeClaim status

### What Is The Difference Between ClusterIP, NodePort, And LoadBalancer?

ClusterIP provides internal cluster access.

NodePort exposes a port on nodes.

LoadBalancer requests an external load balancer in supported environments.

### Why Is An Ingress Controller Required?

The Ingress object defines routing configuration.

The controller implements that configuration and handles traffic.

### How Would You Secure This Application?

- Use non-root containers
- Disable privilege escalation
- Drop capabilities
- Apply NetworkPolicy
- Use approved secret management
- Use TLS
- Restrict RBAC
- Scan images
- Pin image versions
- Apply resource controls
- Audit changes

### How Do You Handle Secrets In GitOps?

Commit references or encrypted/managed secret definitions according to the approved platform.

Do not commit plaintext production credentials.

Use an external secret manager or approved encrypted workflow.

### Explain A Production Incident.

A deployment completed, but users received errors.

The Pods were Running, but the Service had no endpoints.

Investigation showed the Service selector did not match the labels introduced in the new Pod template.

The selector was corrected, endpoints reappeared, application access was validated, and a manifest validation check was added to prevent recurrence.

### How Would You Explain This Project In An Interview?

### Situation

A containerized application required scalable and recoverable deployment.

### Task

Design a Kubernetes deployment with configuration, health checks, networking, updates, and rollback.

### Action

Created version-controlled manifests for the Namespace, ConfigMap, Secret reference, Deployment, Service, storage, Ingress, and HPA.

Added probes, resource controls, security context, rollout validation, failure simulations, troubleshooting, and rollback documentation.

### Result

Created a reproducible Kubernetes portfolio project demonstrating deployment, networking, health management, controlled updates, recovery, and production troubleshooting.
