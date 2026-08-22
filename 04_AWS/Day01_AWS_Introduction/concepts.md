# Day 01 - AWS Introduction Concepts

## What Is Cloud Computing?

Cloud computing is an approach for accessing computing capabilities such as servers, storage, databases, networking, analytics, and application services through a cloud provider.

Instead of purchasing and operating every physical component directly, an organization can provision cloud resources according to its technical and business requirements.

## Why Organizations Use Cloud Computing

Common reasons include:

- Faster infrastructure provisioning

- Ability to scale resources

- Reduced physical data-center administration

- Access to managed services

- Automation through APIs and Infrastructure as Code

- Global deployment options

- Backup and disaster-recovery capabilities

- Usage-based charging for many services

Cloud adoption does not eliminate architecture, security, governance, cost-management, or operational responsibilities.

## What Is AWS?

AWS stands for Amazon Web Services.

AWS provides cloud services across areas such as:

- Compute

- Storage

- Databases

- Networking

- Security

- Monitoring

- Analytics

- Application Integration

- Containers

- Serverless Computing

AWS describes its services as cloud-based products used to build, deploy, host, and manage applications and infrastructure.

## Cloud Characteristics

Important cloud characteristics include:

- On-demand provisioning

- Automation through APIs

- Resource scalability

- Elastic capacity adjustment

- Metered usage

- Shared provider infrastructure with logical isolation

- Global infrastructure options

## Scalability

Scalability is the ability of a system to support increased or reduced workload.

Vertical Scaling

Increase or decrease the resources of an existing system.

Examples:

- More CPU

- More memory

- Larger instance type

Horizontal Scaling

Increase or decrease the number of systems.

Examples:

- Add more instances behind a load balancer

- Remove instances when demand decreases

## Elasticity

Elasticity is the ability to adjust resources according to workload demand.

Scalability describes the system's ability to grow or shrink.

Elasticity emphasizes adjusting capacity according to changing demand.

## High Availability

High availability aims to keep an application accessible despite component failures.

An AWS design may distribute workloads across multiple Availability Zones.

AWS states that a multi-Availability-Zone deployment helps an application remain available if one Availability Zone fails.

## Fault Tolerance

Fault tolerance is the ability of a system to continue operating despite failures.

Fault-tolerant architecture normally requires redundancy, automated recovery, and removal of single points of failure.

High availability and fault tolerance are related but are not identical terms.

## Cloud Service Models

### Infrastructure as a Service

The customer manages more of the operating environment.

Typical customer responsibilities can include:

- Guest operating system

- Security patches

- Application software

- Network and firewall configuration

- Data

Amazon EC2 is an example of an Infrastructure as a Service offering in the AWS Shared Responsibility Model. AWS states that EC2 customers manage the guest operating system, installed application software, and Security Group configuration.

### Platform as a Service

The provider manages more of the underlying platform while the customer focuses more on the deployed application, configuration, and data.

### Software as a Service

The customer consumes a complete application managed primarily by the service provider.

Important:

Exact responsibilities depend on the specific service and configuration.

## Cloud Deployment Models

### Public Cloud

Cloud services delivered using a public cloud provider's infrastructure.

### Private Cloud

Cloud-style infrastructure dedicated to one organization.

### Hybrid Cloud

An environment combining on-premises or private infrastructure with public cloud services.

### Multi-Cloud

An environment using services from more than one cloud provider.

## AWS Region

An AWS Region is a separate geographic area.

AWS designs Regions to be isolated from other Regions for fault tolerance and stability. Many AWS resources are Region-specific, and AWS does not automatically replicate Regional resources across Regions unless the selected service or customer configuration provides that behavior.

Examples of Region codes include:

- ap-south-1

- us-east-1

- eu-west-1

Do not select a Region only because it appears first in the console.

Consider:

- User latency

- Service availability

- Pricing

- Data-residency requirements

- Compliance requirements

- Disaster-recovery design

- Existing organizational standards

## Availability Zone

An Availability Zone is an independent location inside an AWS Region.

AWS states that each Availability Zone consists of one or more discrete data centers with redundant power, networking, and connectivity. Availability Zones within a Region are connected using dedicated, low-latency, high-bandwidth, highly redundant networking.

Examples:

- ap-south-1a

- ap-south-1b

- ap-south-1c

An Availability Zone name such as us-east-1a has historically not always represented the same physical location across all AWS accounts. AWS also provides Availability Zone IDs for consistent physical identification.

## Region And Availability Zone Analogy

A simplified analogy:

- Region = Geographic area

- Availability Zone = Isolated infrastructure location within the Region

This analogy helps learning but does not replace the official architecture definition.

## Multi-Availability-Zone Design

A workload placed in only one Availability Zone can be affected by an outage affecting that Availability Zone.

A highly available design may include:

- Multiple application instances

- Multiple Availability Zones

- Load balancing

- Health checks

- Redundant data architecture

- Automated recovery

Simply creating multiple instances in one Availability Zone does not provide protection from an Availability Zone-level failure.

## AWS Edge Infrastructure

AWS provides edge infrastructure to deliver selected services closer to users.

Edge infrastructure is commonly associated with content delivery, DNS, and other edge-enabled capabilities.

Do not treat an edge location as an Availability Zone.

## Global, Regional, And Zonal Scope

AWS resources can have different scopes.

Global Scope

Some services or configurations operate at an AWS global level.

Regional Scope

A Regional resource belongs to the selected Region.

Availability Zone Scope

A zonal resource belongs to a specific Availability Zone.

Always verify the scope of the individual AWS service instead of assuming it.

## AWS Shared Responsibility Model

AWS describes security and compliance as a shared responsibility between AWS and the customer.

AWS Responsibility

Security of the cloud.

AWS is responsible for protecting the infrastructure that runs AWS services, including the underlying hardware, software, networking, and facilities.

Customer Responsibility

Security in the cloud.

Customer responsibilities depend on the selected AWS service.

For Amazon EC2, customer responsibilities include:

- Guest operating-system updates and security patches

- Installed application software

- Security Group configuration

- Identity and access configuration

- Data protection choices

For more abstracted services such as Amazon S3 and Amazon DynamoDB, AWS manages more of the underlying infrastructure, while customers remain responsible for their data, permissions, classification, and applicable encryption choices.

## Shared Responsibility Examples

EC2 Example

AWS manages:

- Physical facilities

- Physical host infrastructure

- Underlying virtualization infrastructure

Customer manages:

- Guest operating system

- Patching

- Applications

- Security Groups

- Data

- IAM permissions

S3 Example

AWS manages the underlying service infrastructure.

Customer manages:

- Data

- Bucket access

- IAM permissions

- Bucket policies

- Public access configuration

- Encryption choices

- Lifecycle and retention configuration

## AWS Management Console

The AWS Management Console is a browser-based interface for managing AWS services.

Important console checks:

- Signed-in identity

- Selected account

- Selected Region

- Service Region

- Resource tags

- Resource status

- Cost implications

## AWS CLI

The AWS Command Line Interface allows AWS operations through terminal commands.

Typical Day01 identity and configuration commands include:

- aws --version

- aws configure list

- aws sts get-caller-identity

aws sts get-caller-identity returns details about the IAM user or role whose credentials are being used.

Do not configure long-lived access keys on a shared system or expose keys in GitHub.

## AWS Account Root User

The root user is created with the AWS account and has broad account-level authority.

Security principles:

- Do not use the root user for daily administration

- Protect root credentials

- Enable MFA

- Do not create root access keys

- Use IAM identities or approved organizational access for routine work

## AWS Identity Basics

AWS access may use:

- IAM users

- IAM roles

- Federated identities

- IAM Identity Center

Detailed IAM implementation belongs in Day02_IAM.

## Cost Management Foundation

Before creating resources:

- Review pricing

- Select the intended Region

- Tag resources

- Define a cleanup plan

- Configure budgets and alerts where appropriate

- Avoid leaving unused compute, storage, snapshots, load balancers, NAT gateways, or public IP-related resources running

- Verify deletion after the lab

## Production Architecture Thinking

A production design should consider:

- Availability

- Security

- Scalability

- Performance

- Operational excellence

- Cost

- Recovery

- Monitoring

- Compliance

Creating a resource successfully does not mean the architecture is production-ready.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
