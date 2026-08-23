# Day 09 - Kubernetes Project

## Overview

This module implements an end-to-end Kubernetes application deployment project.

The project deploys a containerized application using Kubernetes resources and validates application availability, networking, configuration, persistence, scalability, and recovery.

Project Flow:

Container Image

↓

Kubernetes Deployment

↓

ReplicaSet

↓

Application Pods

↓

ClusterIP Service

↓

Ingress

↓

Users

Additional Components:

- ConfigMap

- Secret

- PersistentVolumeClaim

- Rolling Update

- Rollback

- Logs And Events

## Project Goal

Deploy and manage an application using production-oriented Kubernetes practices.

The project will demonstrate:

- Declarative YAML manifests

- Application deployment

- Multiple replicas

- Stable networking

- External configuration

- Secret injection

- Persistent storage

- External HTTP routing

- Application validation

- Scaling

- Rolling updates

- Rollback

- Troubleshooting

## Learning Objectives

By the end of this module, you should be able to:

- Organize Kubernetes manifest files

- Create a dedicated Namespace

- Create ConfigMaps

- Create Secrets safely

- Create PersistentVolumeClaims

- Create Deployments

- Configure labels and selectors

- Create Services

- Configure Ingress

- Scale application replicas

- Perform rolling updates

- Perform rollbacks

- Review Pods, Services, PVCs, and Ingress

- Review Kubernetes events

- Review container logs

- Validate application availability

- Clean up project resources

## Topics Covered

- Namespace

- Deployment

- ReplicaSet

- Pods

- Service

- ConfigMap

- Secret

- PersistentVolumeClaim

- Ingress

- Scaling

- Rolling Update

- Rollback

- Logs

- Events

- Application Validation

## DevOps Relevance

Used In:

- CI/CD deployments

- EKS deployments

- AKS deployments

- GKE deployments

- Microservices

- Spring Boot applications

- Production application platforms

- GitOps workflows

- Release automation

## Project Architecture

Internet User

↓

DNS Or Local Host Mapping

↓

Ingress Controller

↓

Ingress Resource

↓

Application Service

↓

Application Deployment

↓

Application Pods

↓

ConfigMap And Secret

↓

PersistentVolumeClaim

## Project Manifest Structure

kubernetes-project/

- 00-namespace.yaml

- 01-configmap.yaml

- 02-secret-template.yaml

- 03-pvc.yaml

- 04-deployment.yaml

- 05-service.yaml

- 06-ingress.yaml

- README.md

Important:

Do not commit real passwords, tokens, certificates, cloud credentials, or production secrets.

## Prerequisites

Before starting:

- A running Kubernetes cluster

- kubectl configured

- Access to create resources

- An available container image

- A default or suitable StorageClass

- An installed Ingress Controller if the Ingress lab is performed

- Basic YAML knowledge

The official Kubernetes deployment tutorial requires a running Kubernetes cluster, kubectl access, a containerized application image, and a desired replica configuration.

## Security Rules

- Never commit real Secret values

- Never upload decoded Secret output

- Use a dedicated Namespace

- Use least-privilege access

- Avoid privileged containers

- Avoid running application containers as root where possible

- Use versioned container images

- Do not use unrestricted public exposure for test applications

- Redact cluster names, endpoints, account IDs, and public IP addresses from screenshots

## Cost Awareness

When using EKS, AKS, GKE, or cloud LoadBalancers:

- Review cluster charges

- Review worker-node charges

- Review load-balancer charges

- Review persistent-volume charges

- Delete unused cloud resources

- Confirm that PersistentVolumes and cloud disks are removed according to the intended retention policy

## Files In This Module

- README.md

- concepts.md

- commands.md

- practise_session.md

- lab_notes.md

- interview_questions.md

- troubleshooting.md

- summary.md

- Day09_Kubernetes_Project_Lab_Screenshots/

## Expected Outcome

After completing this module:

- Namespace is created

- Application configuration is externalized

- Sensitive values are referenced through a Secret

- Persistent storage is requested

- Deployment manages multiple Pods

- Service provides stable internal access

- Ingress provides HTTP routing

- Application is validated

- Scaling is tested

- Rolling update is tested

- Rollback is tested

- Troubleshooting evidence is documented

## Next Module

Day10_Real_World_Kubernetes_Project

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
