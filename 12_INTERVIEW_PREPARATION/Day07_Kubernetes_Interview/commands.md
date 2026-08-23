# Kubernetes Interview Commands

## Verify kubectl

kubectl version --client

## Check Cluster

kubectl cluster-info

## Check Current Context

kubectl config current-context

## List Contexts

kubectl config get-contexts

## Change Context

kubectl config use-context <context-name>

## View Nodes

kubectl get nodes

kubectl get nodes -o wide

## Describe Node

kubectl describe node <node-name>

## View Namespaces

kubectl get namespaces

## View All Resources

kubectl get all -n <namespace>

## View Pods

kubectl get pods -n <namespace>

kubectl get pods -n <namespace> -o wide

kubectl get pods -n <namespace> --show-labels

## Watch Pods

kubectl get pods -n <namespace> -w

## Describe Pod

kubectl describe pod <pod-name> -n <namespace>

## View Pod Logs

kubectl logs <pod-name> -n <namespace>

## Follow Pod Logs

kubectl logs -f <pod-name> -n <namespace>

## View Previous Container Logs

kubectl logs <pod-name> -n <namespace> --previous

## View Specific Container Logs

kubectl logs <pod-name> -c <container-name> -n <namespace>

## Execute Command In Pod

kubectl exec -it <pod-name> -n <namespace> -- sh

## View Deployments

kubectl get deployments -n <namespace>

## Describe Deployment

kubectl describe deployment <deployment-name> -n <namespace>

## View ReplicaSets

kubectl get replicasets -n <namespace>

## Check Rollout

kubectl rollout status deployment/<deployment-name> -n <namespace>

## View Rollout History

kubectl rollout history deployment/<deployment-name> -n <namespace>

## Rollback Deployment

kubectl rollout undo deployment/<deployment-name> -n <namespace>

## Rollback To Revision

kubectl rollout undo deployment/<deployment-name> \
  --to-revision=<revision-number> \
  -n <namespace>

## Pause Rollout

kubectl rollout pause deployment/<deployment-name> -n <namespace>

## Resume Rollout

kubectl rollout resume deployment/<deployment-name> -n <namespace>

## Scale Deployment

kubectl scale deployment/<deployment-name> \
  --replicas=3 \
  -n <namespace>

## Update Image

kubectl set image deployment/<deployment-name> \
  <container-name>=<image>:<tag> \
  -n <namespace>

## View Services

kubectl get services -n <namespace>

## Describe Service

kubectl describe service <service-name> -n <namespace>

## View Endpoints
