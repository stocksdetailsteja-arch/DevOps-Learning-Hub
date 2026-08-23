# Day 02 - Interview Questions

## Basic

### Q1 What Is Kubernetes Control Plane?

Component responsible for managing cluster operations.

### Q2 What Is API Server?

Entry point of Kubernetes.

### Q3 What Is ETCD?

Distributed key-value store holding cluster state.

### Q4 What Is Kubelet?

Agent running on worker nodes.

## Intermediate

### Q1 What Does Scheduler Do?

Selects appropriate node for Pod placement.

### Q2 What Is Kube Proxy?

Manages networking and service routing.

### Q3 Difference Between Control Plane And Worker Node?

Control Plane:

Manages Cluster

Worker Node:

Runs Workloads

## Advanced (5+ Years)

### Q1 ETCD Is Down. What Happens?

Answer:

Cluster state management becomes unavailable and Kubernetes operations are impacted because ETCD stores cluster state.

### Q2 Pod Is Not Scheduled. What Will You Check?

Answer:

Scheduler Events

Node Resources

Node Status

Cluster Events

Taints And Tolerations

### Q3 Why Is API Server Critical?

Answer:

All Kubernetes communication passes through the API Server.

### Q4 How Would You Design High Availability Control Plane?

Answer:

Multiple Control Plane Nodes

ETCD Backup Strategy

Monitoring

Load Balancing

### Q5 Node Is Ready But Pod Not Starting. What Will You Check?

Answer:

Kubelet

Container Runtime

Events

Resource Availability

Logs

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
