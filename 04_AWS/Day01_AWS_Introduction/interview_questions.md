# Day 01 - AWS Introduction Interview Questions And Answers

## Basic Questions

### Q1. What Is Cloud Computing?

Cloud computing provides access to computing capabilities through a cloud provider instead of requiring the customer to own and operate all underlying physical infrastructure.

### Q2. What Is AWS?

AWS is a cloud provider offering services across compute, storage, networking, databases, security, monitoring, analytics, containers, and application integration.

### Q3. What Is An AWS Region?

An AWS Region is a separate geographic area containing multiple Availability Zones.

### Q4. What Is An Availability Zone?

An Availability Zone is an independent location within an AWS Region. Each Availability Zone contains one or more discrete data centers with redundant power, networking, and connectivity.

### Q5. What Is The AWS Shared Responsibility Model?

It divides responsibilities between AWS and the customer.

AWS is responsible for security of the cloud.

The customer is responsible for security in the cloud, with exact responsibilities depending on the selected service.

## Intermediate Questions

### Q1. What Is The Difference Between A Region And An Availability Zone?

A Region is a separate geographic area.

An Availability Zone is an isolated infrastructure location within a Region.

A Region contains multiple Availability Zones.

### Q2. Why Deploy Across Multiple Availability Zones?

A multi-Availability-Zone design helps maintain application availability if one Availability Zone fails.

### Q3. What Is The Difference Between Scalability And Elasticity?

Scalability is the ability to support more or less workload.

Elasticity emphasizes adjusting resources according to changing demand.

### Q4. What Is The Difference Between IaaS, PaaS, And SaaS?

IaaS gives the customer more operating-system and infrastructure-configuration responsibility.

PaaS abstracts more platform management.

SaaS provides a complete application for consumption.

The exact responsibility boundary depends on the service.

### Q5. What Factors Influence Region Selection?

- Latency

- Service availability

- Pricing

- Data residency

- Compliance

- Recovery requirements

- Organizational standards

## Advanced Questions For 5+ Years Experience

### Q1. How Would You Design A Highly Available Web Application Across Availability Zones?

A strong design may include:

Application instances in multiple Availability Zones

Load balancing

Health checks

Stateless application design where practical

Data-layer redundancy

Automated replacement of unhealthy capacity

Monitoring and alerting

Tested recovery procedures

The design must remove single points of failure across compute, networking, and data layers.

### Q2. Is Two EC2 Instances In One Availability Zone Highly Available?

The design has instance redundancy but remains exposed to an Availability Zone-level failure.

For Availability Zone resilience, instances should be distributed across multiple Availability Zones and integrated with health-aware traffic management.

### Q3. Explain Shared Responsibility For EC2.

AWS manages the infrastructure that runs EC2.

The customer manages the guest operating system, patches, installed applications, data, identity permissions, and Security Group configuration.

### Q4. Explain Shared Responsibility For S3.

AWS manages the underlying infrastructure and service platform.

The customer manages data, classification, permissions, bucket policies, public-access settings, and applicable encryption configuration.

### Q5. Why Can The Same Availability Zone Name Represent Different Physical Locations Across Accounts?

AWS historically mapped Availability Zone names independently for many accounts. Availability Zone IDs provide a consistent identifier for the same physical location across accounts.

### Q6. How Do You Choose Between Multi-Availability-Zone And Multi-Region Architecture?

Consider:

- Availability requirements

- Disaster-recovery objectives

- Data consistency

- Latency

- Compliance

- Operational complexity

- Service capabilities

- Cost

Multi-Availability-Zone architecture targets failures within a Region.

Multi-Region architecture targets broader Regional failure or geographic requirements.

### Q7. An Application Is Deployed In One Region But Users Experience High Latency. What Do You Investigate?

User locations

Selected Region

Network path

Application response time

Database latency

Static-content delivery

Caching

DNS behavior

Load-balancer metrics

Whether a different Regional or edge architecture is justified

Do not assume the Region is the only cause without measurement.

### Q8. How Do You Prevent AWS Account Root User Misuse?

- Protect root credentials

- Enable MFA

- Avoid root usage for daily administration

- Do not create root access keys

- Use approved IAM or federated identities

- Monitor account activity

- Apply organizational governance

### Q9. What Evidence Do You Collect Before Creating Production AWS Infrastructure?

- Business requirement

- Architecture

- Expected traffic

- Region decision

- Availability requirement

- Security requirements

- Data classification

- IAM design

- Monitoring plan

- Backup plan

- Recovery plan

- Cost estimate

- Tagging standard

- Cleanup or decommissioning process

### Q10. Your AWS CLI Command Works On EC2 But Not On A Laptop. Why?

Possible reasons:

- Different credentials

- Different profile

- Missing Region

- Different IAM permissions

- Expired session

- Proxy or firewall restriction

- Different CLI version

- System-time issue

- DNS or HTTPS connectivity

Compare identity using aws sts get-caller-identity without exposing sensitive output.

### Q11. How Would You Explain AWS Service Scope During An Interview?

Identify whether the service or resource is:

- Global

- Regional

- Availability Zone-specific

Then explain how that scope affects:

- Availability

- Resource discovery

- Disaster recovery

- Data placement

- Automation

Never assume all AWS services use the same scope.

### Q12. What Is A Common Failure In AWS Beginner Architectures?

Common failures include:

- Single-Availability-Zone deployment

- Publicly exposed resources

- Broad IAM permissions

- Missing monitoring

- Missing backups

- No cost controls

- No resource tags

- No cleanup process

- Root user used for routine work

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
