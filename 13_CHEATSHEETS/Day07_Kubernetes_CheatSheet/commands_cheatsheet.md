# Kubernetes Commands Cheat Sheet

## Cluster Information

kubectl cluster-info

kubectl config current-context

kubectl get nodes

## Namespace

kubectl get ns

kubectl create ns dev

## Pods

kubectl get pods

kubectl get pods -A

kubectl describe pod pod-name

kubectl logs pod-name

kubectl logs -f pod-name

kubectl exec -it pod-name -- bash

## Deployments

kubectl get deployments

kubectl describe deployment deploy-name

kubectl rollout status deployment/deploy-name

## Scale Deployment

kubectl scale deployment app --replicas=3

## Services

kubectl get svc

kubectl describe svc service-name

## Ingress

kubectl get ingress

kubectl describe ingress ingress-name

## ConfigMaps

kubectl get configmaps

## Secrets

kubectl get secrets

## Storage

kubectl get pv

kubectl get pvc

kubectl get storageclass

## HPA

kubectl get hpa

kubectl describe hpa hpa-name

## Resource Usage

kubectl top nodes

kubectl top pods

## Events

kubectl get events

## Rollback

kubectl rollout undo deployment/app

## Helm

helm list

helm history release-name

helm rollback release-name 1
