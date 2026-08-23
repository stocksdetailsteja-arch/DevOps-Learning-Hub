# Kubernetes Troubleshooting Cheat Sheet

## Pod Not Running

Check:

kubectl describe pod pod-name

kubectl logs pod-name

## CrashLoopBackOff

Check:

kubectl logs pod-name

kubectl logs pod-name --previous

Investigate:

- Application Errors
- Memory Issues
- Configuration Problems

## ImagePullBackOff

Check:

kubectl describe pod pod-name

Investigate:

- Wrong Image
- Registry Access
- Credentials

## Pod Pending

Check:

kubectl describe pod pod-name

Investigate:

- CPU
- Memory
- Taints
- PVC

## Service Not Working

Check:

kubectl get svc

kubectl get endpoints

Verify:

- Labels
- Selectors
- Pod Readiness

The Kubernetes workbook specifically recommends checking service endpoints, pod status and networking. 【1-c51f2a】【2-5e71c8】

## Ingress Not Working

Check:

kubectl describe ingress

Verify:

- Host
- Paths
- Controller

## PVC Pending

Check:

kubectl get pvc

kubectl describe pvc

Verify:

- StorageClass
- Capacity

## Pod Restarting

Check:

kubectl describe pod

kubectl logs

Investigate:

- Liveness Probe
- Application Crash
- OOMKilled

## HPA Not Scaling

Check:

kubectl get hpa

Verify:

- Metrics Server
- CPU Usage
- Resource Requests

## Node Not Ready

Check:

kubectl get nodes

kubectl describe node node-name

## Rollout Failure

Check:

kubectl rollout status deployment/app

Rollback:

kubectl rollout undo deployment/app

## Production Investigation Flow

Alert

↓

Pod Status

↓

Logs

↓

Events

↓

Service

↓

Endpoints

↓

Ingress

↓

Root Cause

↓

Fix

↓

Validation

This troubleshooting sequence 
