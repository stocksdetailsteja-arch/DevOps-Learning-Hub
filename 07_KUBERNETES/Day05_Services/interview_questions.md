# Day 05 - Interview Questions

## Basic

### Q1 What Is A Kubernetes Service?

A Kubernetes object that provides stable network access to Pods.

### Q2 Why Are Services Needed?

Pods are ephemeral and can change IP addresses.

### Q3 What Is ClusterIP?

Default internal Kubernetes Service.

### Q4 What Is NodePort?

Service exposed through worker node port.

## Intermediate

### Q1 Difference Between ClusterIP And NodePort?

ClusterIP:

Internal Access

NodePort:

External Access Via Node

### Q2 What Is LoadBalancer Service?

Service integrated with cloud load balancer.

### Q3 What Are Endpoints?

Pods behind a Service.

## Advanced (5+ Years)

### Q1 Application Not Accessible Through Service. What Will You Check?

Answer:

Service Configuration

Endpoints

Pod Status

Labels

Network Policies

### Q2 Why Should Applications Use Service Names Instead Of Pod IPs?

Answer:

Pod IPs can change.

Service DNS remains stable.

### Q3 Service Exists But No Endpoints. What Will You Check?

Answer:

Labels

Selectors

Pod Availability

Namespace

### Q4 How Does Kubernetes Load Balance Traffic?

Answer:

Service distributes requests to available Pods.

### Q5 How Would You Design Production Service Exposure?

Answer:

- ClusterIP For Internal Services

- LoadBalancer For Public Services

- Ingress For Advanced Routing

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
