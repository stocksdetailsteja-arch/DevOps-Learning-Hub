# Day 09 - Interview Questions

## Beginner Level

### What was the goal of this project?

To automate the deployment of an application server using Ansible.

### Which services were used?

- AWS EC2
- Nginx
- Ansible Vault

### Why use Ansible instead of manual deployment?

Automation improves speed, consistency, and reliability.

### What role does Inventory play?

Inventory defines target hosts.

### What role does Vault play?

Vault secures sensitive information.

## Intermediate Level

### How did you structure the project?

Using:

- Roles
- Variables
- Playbooks
- Inventory
- Vault

### Why are Roles important?

Roles improve modularity and reusability.

### How were handlers used?

Handlers restarted services when configuration changed.

### How did you validate deployment?

Using:

- curl
- systemctl
- Ansible output

### How were secrets protected?

Using Ansible Vault.

## Advanced Level (5+ Years)

### How would you scale this project for 500 servers?

- Dynamic Inventory
- Roles
- CI/CD Pipelines
- Parallel Execution

### How would you deploy across multiple AWS accounts?

- IAM Role Assumption
- Environment Variables
- Separate Inventories

### How would you implement zero downtime deployments?

- Load Balancer
- Rolling Updates
- Health Checks
- Canary Releases

### How would you integrate this with Jenkins?

Pipeline Stages:

- Checkout
- Lint
- Test
- Vault Authentication
- Deploy

### How would you secure production deployments?

- IAM Roles
- Vault
- Secrets Manager
- SSH Hardening
- RBAC

### Explain a real-world production deployment.

A DevOps team automated deployment of:

- EC2 Instances
- Nginx Configuration
- Application Artifacts
- Monitoring Agents

using Ansible Roles triggered through Jenkins pipelines.

Deployment time reduced from hours to minutes.
