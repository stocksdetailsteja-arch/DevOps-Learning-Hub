# Capstone Architecture

## End-To-End Flow

Developer

↓

GitHub Repository

↓

Webhook

↓

Jenkins

↓

Checkout

↓

Build

↓

Unit Tests

↓

Docker Build

↓

Docker Push

↓

Terraform

↓

AWS Infrastructure

↓

Kubernetes Cluster

↓

Deployment

↓

Ingress

↓

Application

↓

Prometheus

↓

Grafana

↓

Alertmanager

## Infrastructure

AWS

├── VPC
├── Public Subnets
├── EC2
├── Jenkins
├── Kubernetes Cluster
├── ECR
├── CloudWatch

## Monitoring

Node Exporter

↓

Prometheus

↓

Grafana

↓

Alertmanager

## Recovery

Failure

↓

Alert

↓

Investigation

↓

Rollback

↓

Validation
