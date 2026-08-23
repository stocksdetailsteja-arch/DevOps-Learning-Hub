# Day 03 - Kubernetes Pods Concepts

## What Is A Pod?

A Pod is the smallest deployable unit in Kubernetes.

A Pod can contain:

- One Container

or

- Multiple Containers

Pods are the basic execution units of Kubernetes workloads.

## Pod Architecture

Pod

↓

Container

↓

Application

## Why Pods?

Kubernetes does not deploy containers directly.

Instead:

Container

↓

Pod

↓

Kubernetes Manages Pod

## Single Container Pod

Most Common Type

Pod

↓

Nginx Container

↓

Application Running

## Multi-Container Pod

Pod

↓

Application Container

Log Collection Container

↓

Shared Resources

## Pod Lifecycle

Pending

↓

Running

↓

Succeeded

or

Failed

↓

Deleted

## Pod States

Pending

Pod Created

Waiting For Scheduling

Running

Pod Successfully Executing

Succeeded

Work Completed Successfully

Failed

Execution Failed

Unknown

Cluster Cannot Determine Status

## Pod Networking

Every Pod Gets:

- IP Address

- Network Access

- Cluster Communication

Each Pod can communicate with other Pods through the cluster network.

## Pod Storage

Pods can access:

- EmptyDir

- Volumes

- Persistent Storage

Storage concepts will be covered later.

## Pod Communication Flow

User

↓

Service

↓

Pod

↓

Container

↓

Application

## Real World Example

Frontend Pod

↓

Backend API Pod

↓

Database Pod

↓

Application Working

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
