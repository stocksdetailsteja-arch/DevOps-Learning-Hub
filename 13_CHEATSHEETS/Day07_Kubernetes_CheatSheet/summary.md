# Kubernetes Quick Revision

## Most Important Objects

- Pod
- ReplicaSet
- Deployment
- StatefulSet
- DaemonSet
- Service
- Ingress
- ConfigMap
- Secret
- PVC
- HPA

## Most Important Commands

kubectl get pods

kubectl describe pod

kubectl logs

kubectl exec

kubectl get svc

kubectl get ingress

kubectl get pvc

kubectl rollout undo

## Most Asked Interview Questions

- What Is Pod?
- Deployment Vs StatefulSet?
- Service Types?
- ConfigMap Vs Secret?
- What Is HPA?
- What Is Helm?
- What Is RBAC?

## Most Common Production Issues

- CrashLoopBackOff
- ImagePullBackOff
- Pod Pending
- PVC Pending
- Service Down
- Ingress Failure
- HPA Not Scaling

## Security Best Practices

✅ RBAC

✅ Network Policies

✅ Namespaces

✅ Secrets

✅ Least Privilege

❌ Run Everything As Admin

❌ Hardcoded Passwords

❌ Open Networking

## High Availability

Deployment

↓

Multiple Replicas

↓

HPA

↓

Multiple Nodes

↓

LoadBalancer

## Interview Readiness

Kubernetes ✅

Helm ✅

Production Support ✅
