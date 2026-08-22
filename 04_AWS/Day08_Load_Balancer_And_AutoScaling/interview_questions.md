# Day 08 - Interview Questions

## Basic

### Q1 What Is A Load Balancer?

Distributes traffic across multiple servers.

### Q2 What Is ALB?

Application Load Balancer operating at Layer 7.

### Q3 What Is Auto Scaling?

Automatically adjusts server capacity based on demand.

## Intermediate

### Q1 What Is A Target Group?

Collection of backend targets receiving traffic.

### Q2 What Happens If A Server Fails?

Health check marks it unhealthy.

Traffic is routed to healthy instances.

### Q3 Why Use Auto Scaling?

Improve availability and optimize costs.

## Advanced (5+ Years)

### Q1 Design Highly Available Application Architecture.

Answer:

Multi-AZ

Application Load Balancer

Auto Scaling

RDS Multi-AZ

CloudWatch Monitoring

### Q2 CPU Suddenly Increased To 95%. What Happens?

Answer:

CloudWatch Alarm

↓

Scaling Policy Trigger

↓

Launch Additional EC2

↓

Traffic Redistributed

### Q3 Difference Between Multi-AZ And Auto Scaling?

Multi-AZ:

Availability

Auto Scaling:

Capacity Scaling

### Q4 Why Use Launch Templates?

Answer:

Standardized instance configuration.

Supports repeatable deployment.

### Q5 What Would You Check If ALB Returns 503 Errors?

Answer:

Target Health

Health Check Path

Security Groups

Listener Configuration

Application Service Status

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
