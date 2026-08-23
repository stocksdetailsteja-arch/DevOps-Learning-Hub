# Day 03 - Interview Questions

## Basic

### Q1 What Is An Ad-Hoc Command?

A one-line Ansible command executed directly from the CLI.

### Q2 What Is The Ping Module?

Used to verify connectivity between the control node and managed nodes.

### Q3 What Is The Command Module?

Executes commands on remote hosts.

### Q4 Difference Between Command And Shell Module?

Command:

No Shell Features

Shell:

Supports Pipes, Redirects, Variables

## Intermediate

### Q1 Why Use Ad-Hoc Commands?

Quick administration and troubleshooting.

### Q2 What Is The Copy Module?

Copies files from control node to managed nodes.

### Q3 What Is The File Module?

Creates, deletes, and manages files/directories.

## Advanced (5+ Years)

### Q1 When Should Ad-Hoc Commands Be Avoided?

Answer:

For repeatable automation use Playbooks instead.

### Q2 How Would You Install A Package On 500 Servers?

Answer:

Use package modules through inventory groups.

### Q3 Production Service Restart Failed. What Would You Check?

Answer:

Service Name

Permissions

SSH Connectivity

Logs

Inventory

### Q4 Why Are Playbooks Preferred In Enterprises?

Answer:

- Version Control

- Repeatability

- Auditing

- Standardization

### Q5 How Do Ad-Hoc Commands Help During Incidents?

Answer:

Quick validation and emergency troubleshooting across multiple servers.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
