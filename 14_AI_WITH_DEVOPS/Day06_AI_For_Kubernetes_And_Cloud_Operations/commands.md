# Kubernetes Commands

## Cluster

kubectl cluster-info

kubectl get nodes

## Pods

kubectl get pods -A

kubectl describe pod pod-name

kubectl logs pod-name

## Resource Usage

kubectl top nodes

kubectl top pods

## Deployments

kubectl get deployments

kubectl rollout status deployment/app

kubectl rollout undo deployment/app

## Services

kubectl get svc

## Events

kubectl get events

# AWS Commands

## EC2

aws ec2 describe-instances

## VPC

aws ec2 describe-vpcs

## Security Groups

aws ec2 describe-security-groups

## Auto Scaling

aws autoscaling describe-auto-scaling-groups

## CloudWatch

aws cloudwatch describe-alarms

aws cloudwatch list-metrics

# Terraform Validation

terraform validate

terraform plan

The Terraform workbook recommends validation and plan review before applying changes. 【3-bda001】

# Monitoring

kubectl top pods

kubectl get events

journalctl -xe

top

free -h
