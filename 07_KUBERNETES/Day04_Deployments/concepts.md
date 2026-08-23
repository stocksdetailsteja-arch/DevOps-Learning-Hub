# Day 04 - Kubernetes Deployments Concepts

## What Is A Deployment?

A Deployment is a Kubernetes object used to manage Pods and ReplicaSets.

Deployment provides:

- Scaling

- Self Healing

- Rolling Updates

- Rollbacks

- Version Management

Deployments are commonly used to manage scalable Kubernetes workloads.

## Why Use Deployments?

Without Deployment:

Pod Fails

↓

Application Down

With Deployment:

Pod Fails

↓

New Pod Created Automatically

↓

Application Continues Running

## Deployment Architecture

Deployment

↓

ReplicaSet

↓

Pods

↓

Containers

## What Is ReplicaSet?

ReplicaSet ensures the desired number of Pods are always available.

Example:

Desired Pods = 3

One Pod Crashes

↓

ReplicaSet Creates New Pod

## Scaling

Increase:

3 Pods

↓

5 Pods

↓

Higher Capacity

Scale up and scale down help handle changing workloads.

## Rolling Updates

Old Version

↓

Replace Pods One By One

↓

New Version

↓

Zero Downtime

Benefits:

- No Service Interruption

- Safe Upgrades

- Automatic Management

## Rollback

New Version Fails

↓

Rollback

↓

Previous Stable Version

↓

Application Restored

Rollbacks are an important Kubernetes workload management capability.

## Deployment Strategy

Rolling Update

Default Strategy

No Downtime

Recreate

Old Version Deleted

↓

New Version Created

May Cause Downtime

## Deployment Lifecycle

Create

↓

Run

↓

Scale

↓

Update

↓

Rollback

↓

Delete

## Real World Example

Developer

↓

GitHub

↓

Jenkins

↓

Docker Image

↓

Deployment Update

↓

Pods Updated

↓

Users Served

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
