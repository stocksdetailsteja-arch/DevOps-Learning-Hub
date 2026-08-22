# Day 01 - AWS Introduction Summary

## Topics Covered

- Cloud Computing

- AWS Overview

- Cloud Service Models

- Cloud Deployment Models

- AWS Regions

- Availability Zones

- Edge Infrastructure

- Global, Regional, and Zonal Scope

- High Availability

- Fault Tolerance

- Scalability

- Elasticity

- Shared Responsibility Model

- AWS Console

- AWS CLI

- Root User Security

- Cost Awareness

## Important Definitions

### Region

A separate geographic AWS area containing multiple Availability Zones.

### Availability Zone

An independent location inside a Region, consisting of one or more discrete data centers with redundant infrastructure.

### High Availability

Architecture designed to keep a system accessible despite failures.

### Scalability

Ability to support changing workload capacity.

### Elasticity

Ability to adjust resources according to demand.

### Shared Responsibility

AWS secures the cloud infrastructure, while the customer secures workloads, data, identities, and configurations according to the selected service.

## Commands Learned

- aws --version

- aws help

- aws configure list

- aws configure list-profiles

- aws configure get region

- aws sts get-caller-identity

- aws ec2 describe-regions

- aws ec2 describe-availability-zones

## Quick Revision

- Region = Geographic AWS area

- Availability Zone = Isolated infrastructure location in a Region

- Multi-Availability-Zone = Architecture across multiple Availability Zones

- IaaS = Greater customer operating responsibility

- AWS responsibility = Security of the cloud

- Customer responsibility = Security in the cloud

- Root user = Do not use for daily operations

- AWS CLI identity = Verify before changes

- Region = Verify before resource creation

## Production Notes

- Design across failure boundaries

- Verify service scope

- Apply least privilege

- Enable MFA

- Protect root credentials

- Never expose secrets

- Monitor cost

- Tag resources

- Define cleanup

- Test recovery

## Interview Quick Notes

A Region contains multiple Availability Zones.

Availability Zones are connected using low-latency, high-bandwidth, highly redundant networking.

AWS and the customer share security responsibilities.

The responsibility boundary changes according to the selected service.

High availability requires an end-to-end design, not only multiple compute instances.

## Key Takeaways

- AWS is more than EC2.

- Region selection affects architecture, latency, service availability, compliance, and cost.

- One Availability Zone can become a single point of failure.

- Security remains a shared responsibility.

- Identity and Region must be verified before AWS changes.

- Cost management starts before resource creation.

## Next Topic

Day02_IAM

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
