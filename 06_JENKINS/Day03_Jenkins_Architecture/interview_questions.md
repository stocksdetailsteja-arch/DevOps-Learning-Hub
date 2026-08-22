# Day 03 - Interview Questions

## Basic

### Q1 What Is Jenkins Controller?

Central coordination component responsible for jobs, queue, plugins, and agents.

### Q2 What Is Jenkins Agent?

Machine responsible for executing jobs assigned by the controller.

### Q3 What Is A Node?

Machine registered with Jenkins.

### Q4 What Is A Workspace?

Directory where Jenkins performs builds.

## Intermediate

### Q1 Difference Between Controller And Agent?

Controller:

Coordinates

Agent:

Executes

### Q2 What Is An Executor?

Build execution slot.

### Q3 Why Use Labels?

Assign workloads to appropriate agents.

## Advanced (5+ Years)

### Q1 Why Should Heavy Builds Not Run On Controller?

Answer:

- High CPU Usage

- High Memory Usage

- Queue Growth

- Slow UI

- Stability Issues

### Q2 How Would You Design Enterprise Jenkins Architecture?

Answer:

Dedicated Controller

Agent Pool

Role-Based Access

Secure Credentials

Monitoring

Backup Strategy

Disaster Recovery

### Q3 Build Queue Is Growing Continuously. What Will You Check?

Answer:

Offline Agents

Executor Availability

Labels

Long Running Jobs

Resource Bottlenecks

### Q4 Why Use Distributed Builds?

Answer:

- Faster Builds

- Scalability

- Isolation

- Reduced Controller Load

### Q5 How Do You Secure Jenkins Architecture?

Answer:

- Authentication

- Authorization

- Credential Management

- Agent Isolation

- Network Restrictions

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
