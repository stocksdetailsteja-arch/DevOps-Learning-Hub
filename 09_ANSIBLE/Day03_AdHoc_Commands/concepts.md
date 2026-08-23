# Day 03 - AdHoc Commands Concepts

## What Are Ad-Hoc Commands?

Ad-Hoc Commands are one-line Ansible commands executed directly from the command line.

Purpose:

- Quick Operations

- Verification

- Administration

- Troubleshooting

## Why Use Ad-Hoc Commands?

Without Ad-Hoc Commands:

Login To Server

↓

Execute Command

↓

Logout

↓

Repeat

With Ad-Hoc Commands:

Control Node

↓

Single Command

↓

Multiple Servers

↓

Results

## Ad-Hoc Architecture

Control Node

↓

Inventory

↓

Module

↓

Managed Nodes

↓

Task Execution

## Ping Module

Purpose:

Verify Connectivity

Example:

Check SSH Connectivity Across All Servers.

## Command Module

Purpose:

Execute Linux Commands.

Examples:

- hostname

- date

- uptime

- whoami

## Shell Module

Purpose:

Execute Shell Commands.

Supports:

- Pipes

- Redirection

- Shell Features

## Copy Module

Purpose:

Copy Files To Remote Servers.

Examples:

- Configuration Files

- Scripts

- Deployment Files

## File Module

Purpose:

Manage Files And Directories.

Operations:

- Create

- Delete

- Modify Permissions

## Package Management

Modules:

Ubuntu

↓

apt

RHEL/CentOS

↓

yum

Package Installation Across Many Servers Simultaneously.

## Service Management

Manage:

- nginx

- apache2

- docker

- jenkins

Operations:

- Start

- Stop

- Restart

- Enable

## Real World Example

DevOps Engineer

↓

Ansible Command

↓

50 Linux Servers

↓

Install Nginx

↓

Validation Complete

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
