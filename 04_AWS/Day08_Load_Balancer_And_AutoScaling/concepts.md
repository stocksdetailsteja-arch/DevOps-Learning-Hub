# Day 08 - Load Balancer And Auto Scaling Concepts

## What Is A Load Balancer?

A Load Balancer distributes incoming traffic across multiple servers.

Benefits:

- High Availability

- Better Performance

- Fault Tolerance

- Scalability

## Why Load Balancer Is Required?

Without Load Balancer:

User Requests

↓

Single Server

↓

Failure

↓

Application Down

With Load Balancer:

User Requests

↓

Load Balancer

↓

Multiple Servers

↓

Application Available

## Types Of AWS Load Balancers

Application Load Balancer (ALB)

Layer 7

HTTP/HTTPS

Used for:

- Web Applications

- Microservices

- API Traffic

Network Load Balancer (NLB)

Layer 4

TCP/UDP

Used for:

- High Performance Applications

- Low Latency Workloads

Gateway Load Balancer

Used for:

- Security Appliances

- Traffic Inspection

## What Is A Target Group?

Target Group contains backend resources.

Examples:

- EC2 Instances

- Containers

- IP Addresses

Load Balancer forwards traffic to targets.

## Health Checks

Load Balancer continuously checks application health.

Healthy:

Receive Traffic

Unhealthy:

Traffic Removed

Example Health Check Path:

/health

/actuator/health

## High Availability

Example:

ALB

↓

EC2 Instance AZ-A

↓

EC2 Instance AZ-B

Even if one Availability Zone fails, traffic continues.

## What Is Auto Scaling?

Auto Scaling automatically increases or decreases EC2 instances.

Benefits:

- Cost Optimization

- High Availability

- Elastic Capacity

## Auto Scaling Components

Launch Template

Defines:

- AMI

- Instance Type

- Security Group

- Key Pair

Auto Scaling Group

Manages EC2 instances.

Controls:

- Minimum Capacity

- Desired Capacity

- Maximum Capacity

## Scaling Policies

Dynamic Scaling

Scale based on metrics.

Example:

CPU > 70%

↓

Add Instance

Scheduled Scaling

Scale at fixed times.

Example:

Morning Traffic Increase

## Auto Scaling Example

Minimum = 2

Desired = 2

Maximum = 5

Traffic Spike

↓

CPU > 70%

↓

Create New Instance

↓

Desired = 3

## Production Architecture

Internet

↓

Application Load Balancer

↓

Auto Scaling Group

↓

EC2 Instances Across Multiple AZs

↓

RDS Multi-AZ

High Availability + Scalability

## Real DevOps Example

Users

↓

ALB

↓

Spring Boot Applications

↓

Auto Scaling Group

↓

RDS

Production Ready Architecture

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
