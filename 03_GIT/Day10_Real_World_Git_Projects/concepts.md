# Day 10 - Real World Git Projects Concepts

## Enterprise Git Workflow

Developer

↓

Feature Branch

↓

Commit

↓

Push

↓

Pull Request

↓

Code Review

↓

Merge

↓

Jenkins Build

↓

Deployment

## Git And Jenkins

Git acts as:

Source Of Truth

Jenkins acts as:

Automation Engine

Workflow:

Git Push

↓

Webhook

↓

Jenkins Job

↓

Build

↓

Deploy

## Branch Strategy

Common Strategy:

main

develop

feature/*

hotfix/*

release/*

Benefits:

- Isolation

- Safer Releases

- Easier Rollbacks

## Release Workflow

Development

↓

Testing

↓

Tag Creation

↓

Release Build

↓

Deployment

## Multi Environment Flow

DEV

↓

QA

↓

UAT

↓

PROD

Git branches often represent promotion stages.

## GitOps Concept

Git becomes deployment source of truth.

Git Repository

↓

ArgoCD

↓

Kubernetes

↓

Deployment

## Why Git Is Important In DevOps?

Git drives:

- CI

- CD

- Infrastructure As Code

- Release Management

- Compliance

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
