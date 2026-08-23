# Day 08 - Interview Questions

## Beginner Level

### What is Ansible AWS Integration?

It enables Ansible Playbooks to manage AWS resources using AWS APIs.

### What collection is commonly used for AWS?

amazon.aws

### Which Python library is required?

- boto3
- botocore

### Why is AWS CLI configuration important?

It provides credentials required for authentication.

### What services can Ansible manage?

- EC2
- S3
- IAM
- VPC
- ELB
- Auto Scaling

## Intermediate Level

### How does Ansible communicate with AWS?

Using AWS APIs through boto3 and AWS collections.

### What is Dynamic Inventory?

Dynamic inventory fetches AWS resources automatically instead of maintaining static inventory files.

### Why prefer IAM Roles over Access Keys?

IAM Roles eliminate hardcoded credentials and improve security.

### What happens if IAM permissions are insufficient?

AWS API calls fail.

### How can resources be managed across regions?

Specify region configurations within Playbooks.

## Advanced Level (5+ Years)

### How do enterprises secure AWS credentials for Ansible?

- IAM Roles
- AWS Secrets Manager
- Jenkins Credentials
- Ansible Vault

### How do you design Ansible automation for multiple AWS accounts?

- Separate inventories
- Separate IAM roles
- Cross-account role assumption
- Environment-specific variables

### What are common performance challenges?

- API throttling
- Large inventories
- Parallel execution limits
- Network latency

### Explain Dynamic Inventory architecture.

Dynamic inventory queries AWS APIs and automatically discovers resources based on tags and filters.

### How do you implement production-grade infrastructure automation?

- Version Control
- CI/CD Integration
- Ansible Vault
- IAM Roles
- Environment Separation
- Automated Validation

### Explain a real-world AWS automation project.

A DevOps team automated:

- EC2 provisioning
- Security Group creation
- Load Balancer setup
- Application deployment

using Ansible playbooks executed from Jenkins pipelines across multiple AWS environments.
