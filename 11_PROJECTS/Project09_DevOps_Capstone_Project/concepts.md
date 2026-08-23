# Capstone Concepts

## Continuous Integration

Repository changes automatically trigger build and validation.

Jenkins transforms repository events into repeatable build and deployment workflows. 【5-3270df】【6-326217】

## Continuous Delivery

Validated artifacts are deployment-ready.

## Continuous Deployment

Automated deployment without manual server operations.

## Infrastructure As Code

Terraform provisions infrastructure through version-controlled configuration. 【7-a24bb5】

## Containerization

Docker packages application and dependencies consistently. 【8-abbeb4】

## Orchestration

Kubernetes manages deployment, scaling, and recovery.

## Monitoring

Prometheus collects metrics.

Grafana visualizes metrics.

Alertmanager routes alerts. 【9-9c992a】【10-386ca3】

## Configuration Management

Ansible ensures server consistency.

## Blue-Green Deployment

Two environments:

- Blue
- Green

Traffic shifts to validated deployment.

## Canary Deployment

Small percentage traffic directed to new version before full rollout.

## DevOps Lifecycle

Code

↓

Build

↓

Test

↓

Package

↓

Deploy

↓


