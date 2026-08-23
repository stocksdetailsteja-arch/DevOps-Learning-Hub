# Day 10 - Interview Questions

## Beginner Level

### What was the objective of this project?

To automate infrastructure provisioning, deployment, security, and monitoring using Ansible.

### Which tools were used?

- AWS
- Jenkins
- Docker
- Nginx
- Vault
- Ansible

### Why is automation important?

Automation reduces manual effort and improves consistency.

### Why is Docker used?

Docker provides containerized deployments.

### Why use Jenkins with Ansible?

Jenkins automates execution of Ansible playbooks.

## Intermediate Level

### How did Ansible interact with AWS?

Using:

amazon.aws collection

and AWS APIs.

### Why use IAM Roles instead of Access Keys?

IAM Roles provide better security and remove hardcoded credentials.

### How were secrets managed?

Using Ansible Vault.

### What is the benefit of Reverse Proxy?

Improves security and traffic management.

### Why install monitoring agents?

To track health and performance metrics.

## Advanced Level (5+ Years)

### Explain the complete deployment architecture.

Developer pushes code to GitHub.

Jenkins pipeline is triggered.

Application build starts.

Ansible provisions infrastructure.

Docker container deployed.

Nginx configured.

Monitoring enabled.

Deployment validated.

### How would you handle deployment across 1000 servers?

- Dynamic Inventory
- Parallel Execution
- CI/CD Automation
- Environment-Based Roles

### How
