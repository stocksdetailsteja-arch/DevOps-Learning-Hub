# Day 02 - Kubernetes Architecture Concepts

## High Level Architecture

User

↓

kubectl

↓

API Server

↓

Scheduler

↓

Controller Manager

↓

ETCD

↓

Worker Nodes

↓

Pods

This architecture enables automated deployment, scaling, and management of workloads.

## What Is Control Plane?

Control Plane manages cluster operations.

Responsibilities:

- Scheduling

- Cluster State Management

- API Access

- Monitoring Desired State

## Control Plane Components

API Server

API Server is the entry point of Kubernetes.

Responsibilities:

- Receives Requests

- Processes Commands

- Communicates With Components

Example:

kubectl get pods

↓

API Server

Scheduler

Scheduler decides where Pods should run.

Responsibilities:

- Node Selection

- Resource Evaluation

- Workload Placement

Example:

Pod Created

↓

Scheduler

↓

Best Worker Node Selected

Controller Manager

Controller Manager maintains desired cluster state.

Responsibilities:

- Node Monitoring

- Replica Monitoring

- Pod Recovery

Example:

Pod Crash

↓

Controller Detects

↓

New Pod Created

ETCD

ETCD is Kubernetes' distributed key-value database.

Stores:

- Cluster State

- Configuration

- Secrets Metadata

- Node Information

ETCD is one of the most critical Kubernetes components.

## What Is A Worker Node?

Worker Nodes execute workloads.

Responsibilities:

- Run Pods

- Execute Containers

- Provide Compute Resources

## Worker Node Components

Kubelet

Kubelet runs on every worker node.

Responsibilities:

- Communicate With API Server

- Start Containers

- Monitor Pod Health

- Report Node Status

Kube Proxy

Kube Proxy manages networking.

Responsibilities:

- Service Routing

- Pod Communication

- Network Rules

Container Runtime

Responsible For:

- Running Containers

- Pulling Images

- Container Lifecycle

Examples:

- containerd

- CRI-O

## Cluster Communication Flow

kubectl

↓

API Server

↓

Scheduler

↓

Worker Node

↓

Kubelet

↓

Container Runtime

↓

Pod

## Real World Example

Developer Deployment Request

↓

API Server

↓

Scheduler

↓

Worker Node

↓

Pod Created

↓

Application Available

## Why Architecture Matters?

Benefits:

- Scalability

- Reliability

- High Availability

- Troubleshooting

- Security

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
