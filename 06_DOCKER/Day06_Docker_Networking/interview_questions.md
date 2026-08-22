# Day 06 - Interview Questions

## Basic

### Q1 What Is Docker Networking?

Enables communication between containers and external systems.

### Q2 What Is Bridge Network?

Default Docker network.

### Q3 What Is Port Mapping?

Exposing container ports to host ports.

### Q4 How Do You List Networks?

docker network ls

## Intermediate

### Q1 Difference Between Bridge And Host Network?

Bridge:

Isolated

Host:

Shares Host Networking

### Q2 Why Use Custom Networks?

Improved communication and isolation.

### Q3 Why Use DNS Instead Of IP?

Container IPs can change.

DNS names remain consistent.

## Advanced (5+ Years)

### Q1 Application Not Reachable Through Port Mapping. What Will You Check?

Answer:

Container Running

Port Mapping

Application Listening Port

Firewall Rules

Network Configuration

### Q2 Why Are Custom Networks Preferred In Production?

Answer:

- Better Isolation

- Security

- Easier Management

- DNS-Based Communication

### Q3 Containers Cannot Communicate. What Will You Check?

Answer:

Network Membership

DNS Resolution

Firewall

Container State

Application Port

### Q4 How Do Microservices Use Docker Networking?

Answer:

Frontend

↓

API

↓

Database

All communicate through shared Docker networks.

### Q5 How Do You Troubleshoot Docker DNS Issues?

Answer:

Network Inspection

Container Names

Network Membership

Application Logs

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
