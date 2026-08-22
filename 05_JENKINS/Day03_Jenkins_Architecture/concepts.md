i# Day 03 - Jenkins Architecture Concepts

## What Is Jenkins Architecture?

Jenkins Architecture defines how builds are coordinated and executed.

Developer

↓

Git Repository

↓

Jenkins Controller

↓

Build Queue

↓

Agent

↓

Executor

↓

Workspace

↓

Build

## Jenkins Controller

The Controller is the central management component.

Responsibilities:

- Job Scheduling

- Queue Management

- Plugin Management

- User Management

- Credential Management

- Agent Management

The Controller coordinates work but should avoid heavy build execution in production.

## Jenkins Agent

An Agent performs actual execution work assigned by the controller.

Examples:

- Linux Agent

- Windows Agent

- Docker Agent

- Kubernetes Agent

## Why Agents Are Important?

Without Agents:

Controller

↓

All Builds

↓

High CPU

↓

High Memory

↓

Slow Jenkins

With Agents:

Controller

↓

Assign Work

↓

Agent Executes

↓

Controller Remains Responsive

## What Is A Node?

A Node is any machine registered with Jenkins.

Examples:

Controller Node

Linux Agent Node

Windows Agent Node

Docker Agent Node

## What Is An Executor?

Executor = Build Slot

Example:

Agent

↓

4 Executors

↓

4 Concurrent Builds

Planning executors incorrectly can create resource bottlenecks.

## What Is A Workspace?

Workspace is the directory where builds execute.

Activities:

- Source Code Checkout

- Compilation

- Testing

- Artifact Generation

Example:

Repository

↓

Checkout

↓

Workspace

↓

Build Output

## Build Queue

Queue stores jobs waiting for execution.

Example:

10 Jobs Triggered

↓

2 Executors Available

↓

8 Jobs Wait

↓

Queue Managed By Controller

## Labels

Labels identify agent capabilities.

Examples:

linux

windows

docker

maven

java17

kubernetes

Pipeline selects an agent using required labels.

## Distributed Builds

Distributed Builds allow execution across multiple agents.

Controller

↓

Java Agent

↓

Docker Agent

↓

Test Agent

↓

Deploy Agent

Benefits:

- Faster Builds

- Better Scalability

- Reduced Controller Load

## Controller vs Agent

Controller:

- Coordinates

- Stores Configuration

- Manages Queue

- Manages Plugins

Agent:

- Builds

- Tests

- Packages

- Deploys

## Enterprise Jenkins Architecture

GitHub

↓

Controller

↓

Agent Pool

↓

Build Agents

↓

Test Agents

↓

Docker Agents

↓

Deploy Agents

↓

Monitoring

## Security Architecture

Security Controls:

- Authentication

- Authorization

- Credentials Store

- Agent Isolation

- Audit Reviews

Never hardcode credentials inside jobs or pipelines.

## Real DevOps Example

Developer Push

↓

GitHub

↓

Jenkins Controller

↓

Maven Agent

↓

Build

↓

Test

↓

Docker Agent

↓

Container Build

↓

Deployment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
