# Day 06 - VPC Concepts

## What Is VPC?

Amazon VPC (Virtual Private Cloud) is a logically isolated virtual network inside AWS.

It allows you to control:

- IP Addressing

- Routing

- Internet Access

- Security

- Connectivity

## Why VPC Is Important?

Without VPC:

- No network isolation

- No subnet design

- No secure architecture

With VPC:

- Controlled Network

- Segmentation

- Security

- High Availability

## CIDR Block

CIDR = Classless Inter-Domain Routing

Example:

10.0.0.0/16

Meaning:

10.0.0.0 → Network Range

16 → Network Mask

## Example CIDR

VPC:

10.0.0.0/16

Public Subnet:

10.0.1.0/24

Private Subnet:

10.0.2.0/24

## What Is A Subnet?

A subnet is a smaller IP range within a VPC.

## Public Subnet

A subnet with a route to an Internet Gateway.

Use Cases:

- Web Servers

- Bastion Hosts

- Load Balancers

## Private Subnet

A subnet without direct internet access.

Use Cases:

- Databases

- Internal Applications

- Backend Services

## Route Table

Defines where network traffic should go.

Example:

Destination:

0.0.0.0/0

↓

Internet Gateway

## Internet Gateway (IGW)

Provides internet access for resources in public subnets.

Example:

EC2

↓

Internet Gateway

↓

Internet

## NAT Gateway

Allows outbound internet access from private subnets.

Example:

Private EC2

↓

NAT Gateway

↓

Internet

Private resources cannot accept inbound internet connections through NAT.

## Security Group

Instance-level firewall.

Characteristics:

- Stateful

- Allow Rules Only

- Attached To Resource

Example:

Allow SSH 22

Allow HTTP 80

## Network ACL (NACL)

Subnet-level firewall.

Characteristics:

- Stateless

- Allow And Deny Rules

- Applied To Subnet

## Security Group vs NACL

Security Group:

- Stateful

- Instance Level

- Allow Only

NACL:

- Stateless

- Subnet Level

- Allow And Deny

## Production VPC Design

VPC

↓

2 Public Subnets

↓

2 Private Subnets

↓

Multi-AZ

↓

Load Balancer

↓

Application Servers

↓

Database

This is a standard production architecture pattern.

## Real DevOps Example

Load Balancer

↓

Public Subnet

↓

Jenkins

↓

Private Subnet

↓

Database

Secure layered network design.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
