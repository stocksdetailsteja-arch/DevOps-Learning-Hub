# Day 02 - Interview Questions

## Basic

### Q1 What Is Ansible Inventory?

Inventory is a file that defines managed hosts and groups.

### Q2 Why Is Inventory Required?

To tell Ansible which servers to manage.

### Q3 What Is A Host Group?

Logical collection of servers.

### Q4 What Is Static Inventory?

Manually maintained inventory file.

## Intermediate

### Q1 What Is Dynamic Inventory?

Automatically generated inventory based on cloud or external systems.

### Q2 Difference Between Host Variables And Group Variables?

Host Variables:

Specific Host

Group Variables:

Shared Across Group

### Q3 Why Use Groups?

To execute tasks on multiple hosts efficiently.

## Advanced (5+ Years)

### Q1 How Would You Design Inventory For 1000 Servers?

Answer:

- Environment Based Groups

- Application Based Groups

- Dynamic Inventory

- Standard Naming

### Q2 Why Do Enterprises Prefer Dynamic Inventory?

Answer:

- Auto Discovery

- Cloud Integration

- Better Scalability

### Q3 Inventory Works But Hosts Are Unreachable. What Will You Check?

Answer:

SSH Connectivity

Firewall

Host Variables

Inventory Configuration

### Q4 How Would You Separate Dev, QA, And Production?

Answer:

Create Dedicated Inventory Groups.

### Q5 How Does Inventory Fit Into CI/CD Deployments?

Answer:

Pipeline

↓

Ansible

↓

Inventory

↓

Target Environment

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
