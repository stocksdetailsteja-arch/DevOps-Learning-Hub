# Day 03 - EC2 Interview Questions

## Basic

### Q1 What Is EC2?

Virtual machine service provided by AWS.

### Q2 What Is AMI?

Template used to launch EC2 instances.

### Q3 What Is Security Group?

Virtual firewall attached to EC2.

## Intermediate

### Q1 Difference Between Security Group And NACL?

Security Group:

Instance level.

Stateful.

NACL:

Subnet level.

Stateless.

### Q2 Difference Between Public And Private IP?

Public:

Accessible via Internet.

Private:

Internal network communication.

## Advanced (5+ Years)

### Q1 How Would You Secure A Jenkins EC2 Server?

Answer:

Private Subnet

IAM Role

Restricted Security Group

Backup Strategy

Monitoring

### Q2 How Do You Reduce EC2 Costs?

Answer:

- Right-size Instances

- Stop Unused Instances

- Reserved Capacity Where Appropriate

- Spot Instances For Non-Critical Workloads

### Q3 EC2 Is Running But Application Is Not Reachable. What Will You Check?

Answer:

Security Group

Application Process

Public IP

Route Tables

OS Firewall

Load Balancer

### Q4 Why Use IAM Roles Instead Of Access Keys On EC2?

Answer:

Roles provide temporary credentials and avoid hardcoded secrets.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
