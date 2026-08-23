i# DevOps Projects

## Introduction

The DevOps Projects module converts the concepts learned in previous modules into practical, documented, and demonstrable engineering projects.

The module combines:

- Linux
- Bash Scripting
- Git And GitHub
- AWS
- Jenkins
- Docker
- Kubernetes
- Terraform
- Ansible
- Monitoring And Observability

Each project should demonstrate more than successful installation.

Every project must show:

- Problem Understanding
- Architecture Design
- Implementation
- Automation
- Security
- Testing
- Monitoring
- Troubleshooting
- Rollback
- Cleanup
- Documentation
- Interview Explanation

## Module Objective

The objective of this module is to build a recruiter-ready and interview-ready DevOps portfolio.

By completing this module, you will:

- Apply DevOps concepts in realistic scenarios
- Connect multiple DevOps tools
- Automate infrastructure and application delivery
- Build reusable configurations
- Implement monitoring and alerting
- Troubleshoot controlled failures
- Document root-cause analysis
- Create operational runbooks
- Capture implementation evidence
- Prepare project explanations for interviews

## Portfolio Outcome

After completing this module, the repository should demonstrate:

- Linux Administration
- Bash Automation
- AWS Cloud Infrastructure
- Continuous Integration
- Continuous Deployment
- Containerization
- Container Orchestration
- Infrastructure As Code
- Configuration Management
- Monitoring And Observability
- Incident Response
- Security Best Practices
- Cost Optimization
- Disaster Recovery
- Production Troubleshooting

## Project Development Workflow

Every project should follow this workflow:

Plan

↓

Define Requirements

↓

Design Architecture

↓

Identify Security Boundaries

↓

Create Repository Structure

↓

Implement The Solution

↓

Test The Solution

↓

Simulate Failures

↓

Troubleshoot Problems

↓

Validate Recovery

↓

Document Evidence

↓

Clean Up Resources

↓

Prepare Interview Explanation

## Project 01 - Linux Automation

### Project Goal

Build a Linux server health-checking and operational automation solution.

### Technologies

- Linux
- Bash
- Cron
- systemd
- journalctl
- Git

### Features

- CPU health check
- Memory health check
- Disk utilization check
- Service status validation
- Network connectivity validation
- Log file generation
- Threshold-based warnings
- Scheduled execution
- Error handling
- Exit codes

### Deliverables

- Health-check script
- Configuration file
- Sample output
- Cron configuration
- systemd service or timer
- Troubleshooting documentation
- Operational runbook
- Screenshots

### Production Scenarios

- Disk usage exceeds threshold
- Critical service stops
- Script lacks execution permission
- Cron job does not execute
- Log directory becomes unavailable
- Network endpoint becomes unreachable

## Project 02 - AWS Infrastructure

### Project Goal

Build a secure AWS application infrastructure.

### Technologies

- Amazon VPC
- Amazon EC2
- Security Groups
- Application Load Balancer
- Auto Scaling
- Amazon RDS
- Amazon S3
- IAM
- Amazon CloudWatch

### Architecture Requirements

- Custom VPC
- Public subnets
- Private subnets
- Internet Gateway
- Route tables
- Restricted Security Groups
- Application Load Balancer
- Compute layer
- Database layer
- Monitoring
- Resource tags

### Security Requirements

- Apply least privilege
- Restrict SSH access
- Avoid public database access
- Use IAM roles instead of embedded credentials
- Avoid committing access keys
- Separate application and database security boundaries

### Validation

- Application is reachable through the load balancer
- Unhealthy targets are detected
- Private resources are not directly exposed
- CloudWatch metrics are available
- Infrastructure cleanup is documented

## Project 03 - Jenkins CI/CD

### Project Goal

Build a CI/CD pipeline that automatically builds, tests, packages, and deploys an application.

### Pipeline Flow

Developer Push

↓

GitHub Repository

↓

Jenkins Webhook

↓

Source Checkout

↓

Build

↓

Unit Test

↓

Code Quality Check

↓

Artifact Creation

↓

Deployment

↓

Health Validation

### Technologies

- GitHub
- Jenkins
- Maven
- Java
- Linux
- AWS EC2
- Shell Scripting

### Pipeline Stages

- Checkout
- Validate
- Compile
- Unit Test
- Package
- Scan
- Publish Artifact
- Deploy
- Health Check
- Notify

### Production Requirements

- Credentials must use Jenkins Credentials
- Secrets must not appear in logs
- Failed tests must block deployment
- Artifacts must be versioned
- Deployment must have rollback instructions
- Pipeline failures must be documented

## Project 04 - Docker Deployment

### Project Goal

Containerize and deploy an application using Docker.

### Technologies

- Docker
- Dockerfile
- Docker Compose
- Linux
- Amazon EC2
- Container Registry

### Features

- Multi-stage Docker build
- Non-root container user
- Health check
- Environment-based configuration
- Persistent data where required
- Container networking
- Resource controls
- Image tagging
- Image scanning
- Log inspection

### Validation

- Image builds successfully
- Container starts successfully
- Health check passes
- Application is reachable
- Logs are available
- Container survives expected restart conditions
- Rollback to a previous image is documented

## Project 05 - Kubernetes Deployment

### Project Goal

Deploy and operate a containerized application using Kubernetes.

### Technologies

- Kubernetes
- kubectl
- Deployment
- Service
- ConfigMap
- Secret
- Ingress
- PersistentVolume
- Horizontal Pod Autoscaler

### Features

- Declarative deployment
- Replica management
- Rolling updates
- Rollback
- Readiness probe
- Liveness probe
- Resource requests
- Resource limits
- Application configuration
- Secret references
- External access

### Failure Scenarios

- Pod enters CrashLoopBackOff
- ImagePullBackOff occurs
- Readiness probe fails
- Service has no endpoints
- Ingress returns an error
- Deployment rollout becomes stuck
- Node capacity becomes insufficient

## Project 06 - Terraform AWS

### Project Goal

Provision reusable AWS infrastructure using Terraform.

### Technologies

- Terraform
- AWS
- VPC
- EC2
- Load Balancer
- Auto Scaling
- S3 Backend
- State Locking
- Modules

### Features

- Provider configuration
- Input variables
- Outputs
- Reusable modules
- Remote state
- State locking
- Environment configuration
- Resource tagging
- Validation
- Automated cleanup

### Validation

- terraform fmt completes
- terraform validate succeeds
- terraform plan is reviewed
- Infrastructure is created successfully
- Outputs are verified
- terraform destroy removes lab resources

### Production Scenarios

- State file is locked
- Resource drift is detected
- A resource is changed manually
- A module upgrade introduces a breaking change
- A partial apply occurs
- Sensitive outputs are exposed

## Project 07 - Ansible Automation

### Project Goal

Automate Linux configuration and application deployment using Ansible.

### Technologies

- Ansible
- Inventory
- Playbooks
- Roles
- Handlers
- Templates
- Variables
- Ansible Vault
- AWS EC2

### Features

- Dynamic or structured inventory
- Reusable roles
- Package installation
- Service configuration
- Application deployment
- Handler-based restart
- Environment variables
- Vault-protected secrets
- Idempotent execution
- Validation tasks

### Validation

- Inventory connectivity succeeds
- Syntax validation succeeds
- Check mode is reviewed
- First execution applies changes
- Second execution reports no unnecessary changes
- Service health is verified

## Project 08 - Observability Stack

### Project Goal

Build a complete monitoring, alerting, and centralized logging platform.

### Technologies

- Prometheus
- Node Exporter
- PromQL
- Grafana
- AlertManager
- Amazon CloudWatch
- Elasticsearch
- Logstash
- Kibana

### Metrics Scope

- CPU
- Memory
- Disk
- Network
- Application availability
- Request rate
- Error rate
- Request latency

### Project Features

- Prometheus scrape configuration
- Node Exporter integration
- Grafana dashboards
- Prometheus alert rules
- AlertManager routing
- CloudWatch dashboard
- CloudWatch alarm
- Centralized logs
- Incident runbook
- Failure simulation

### Incident Simulations

- High CPU utilization
- Disk utilization increase
- Application service failure
- Monitoring target failure
- Missing metrics
- Alert delivery failure
- Log ingestion failure

## Project 09 - End-To-End DevOps Project

### Project Goal

Build an automated application delivery platform from source code to production monitoring.

### End-To-End Flow

Developer

↓

GitHub

↓

Jenkins

↓

Build And Test

↓

Docker Image

↓

Container Registry

↓

Terraform Infrastructure

↓

Kubernetes Deployment

↓

Ansible Configuration

↓

Prometheus And Grafana

↓

AlertManager And CloudWatch

### Technologies

- GitHub
- Jenkins
- Maven
- Docker
- Kubernetes
- Terraform
- Ansible
- AWS
- Prometheus
- Grafana

### Required Capabilities

- Automated source checkout
- Automated build
- Automated testing
- Image creation
- Image publishing
- Infrastructure provisioning
- Application deployment
- Health verification
- Monitoring
- Alerting
- Rollback
- Resource cleanup

### Validation

- Commit triggers pipeline
- Tests complete successfully
- Image is uniquely tagged
- Infrastructure is provisioned
- Application is deployed
- Health checks pass
- Dashboard displays metrics
- Controlled failure produces an alert
- Previous application version can be restored

## Project 10 - Production Grade Capstone

### Project Goal

Build a secure, automated, observable, resilient, and documented production-style DevOps platform.

### Capstone Scope

- Version Control
- CI/CD
- Infrastructure As Code
- Configuration Management
- Containerization
- Container Orchestration
- Cloud Infrastructure
- Monitoring
- Centralized Logging
- Alerting
- Security
- Cost Optimization
- Backup
- Recovery
- Operational Documentation

### Production Requirements

- Reproducible infrastructure
- Modular code
- Environment separation
- Least-privilege access
- Protected secrets
- Automated tests
- Health checks
- Resource requests and limits
- Monitoring dashboards
- Actionable alerts
- Rollback procedure
- Disaster recovery notes
- Cost cleanup procedure
- Root-cause analysis example

### Capstone Evidence

- Architecture diagram
- Repository structure
- Pipeline screenshot
- Build result
- Test result
- Docker image
- Infrastructure output
- Deployment state
- Application response
- Grafana dashboard
- Alert notification
- Logs
- Failure simulation
- Rollback evidence
- Cleanup evidence
- Incident timeline
- Final project summary

## Standard Files For Every Project

### README.md

Contains:

- Problem statement
- Business requirement
- Solution overview
- Architecture
- Prerequisites
- Implementation
- Validation
- Security
- Cost controls
- Cleanup
- Learning outcomes

### architecture.md

Contains:

- Architecture components
- Request flow
- Network flow
- Security boundaries
- Deployment flow
- Monitoring flow
- Failure points
- Design decisions

### concepts.md

Contains:

- Technical concepts
- Tool integration
- Design considerations
- Production best practices
- Scalability
- Availability
- Security

### commands.md

Contains:

- Installation commands
- Configuration commands
- Deployment commands
- Validation commands
- Troubleshooting commands
- Rollback commands
- Cleanup commands

Commands should not be placed inside tables.

### practise_session.md

Contains:

- Step-by-step implementation
- Validation checkpoints
- Failure simulations
- Recovery exercise
- Screenshot checkpoints
- Cleanup steps

### lab_notes.md

Contains:

- Environment details
- Resources created
- Commands executed
- Results observed
- Problems encountered
- Root causes
- Resolutions
- Cost cleanup status

### interview_questions.md

Contains:

- Beginner questions
- Intermediate questions
- Advanced questions
- Architecture questions
- Security questions
- Troubleshooting questions
- Incident scenarios
- Questions suitable for more than five years of experience

Every question must include a clear answer.

### troubleshooting.md

Contains:

- Symptom
- Impact
- Possible causes
- Investigation
- Root cause
- Resolution
- Validation
- Prevention
- Rollback
- Escalation

### runbook.md

Contains:

- Service overview
- Dependencies
- Health checks
- Dashboard locations
- Common alerts
- Diagnostic commands
- Restart instructions
- Recovery steps
- Rollback steps
- Escalation guidance

### rollback.md

Contains:

- Rollback trigger
- Previous stable version
- Rollback commands
- Database considerations
- Configuration restoration
- Post-rollback validation
- Communication requirements

### summary.md

Contains:

- Project result
- Technologies used
- Problems solved
- Skills demonstrated
- Interview takeaways
- Future improvements

### screenshots

Contains practical implementation evidence.

## GitHub Documentation Standards

Every project README should include:

- Project title
- Problem statement
- Business requirement
- Architecture
- Technologies
- Prerequisites
- Repository structure
- Setup steps
- Configuration
- Deployment process
- Validation
- Screenshots
- Troubleshooting
- Rollback
- Cleanup
- Security considerations
- Cost considerations
- Learning outcomes
- Interview explanation

## Screenshot Naming Standard

Use numbered and descriptive filenames.

Examples:

- 01_architecture.png
- 02_repository_structure.png
- 03_infrastructure_plan.png
- 04_pipeline_execution.png
- 05_unit_test_success.png
- 06_docker_image.png
- 07_kubernetes_deployment.png
- 08_application_validation.png
- 09_grafana_dashboard.png
- 10_alert_notification.png
- 11_failure_simulation.png
- 12_rollback_validation.png
- 13_resource_cleanup.png

## Security Rules

- Never commit AWS access keys
- Never commit private SSH keys
- Never commit passwords
- Never commit tokens
- Never commit unencrypted secrets
- Use IAM roles where possible
- Apply least privilege
- Restrict Security Group access
- Use environment variables carefully
- Use secret stores
- Sanitize screenshots
- Review Git history before publishing
- Add sensitive files to .gitignore
- Rotate accidentally exposed credentials immediately

## Recommended .gitignore Entries

- .env
- *.pem
- *.key
- *.tfstate
- *.tfstate.*
- terraform.tfvars
- vault_pass.txt
- secrets.yml
- credentials
- target/
- logs/
- .terraform/
- crash.log
- *.retry

## Production Engineeri*g Principles

### Reproducibility
*A project should be deployable by *ollowing its documentation.

### I*empotency

Repeated automation sho*ld not introduce unintended change*.

### Least Privilege

Users and *ervices should receive only requir*d permissions.

### Observability
*Every deployed service should expo*e measurable health signals.

### *ailure Recovery

Every deployment *hould include recovery and rollbac* guidance.

### Automation

Repeat*ble manual processes should be aut*mated.

### Documentation

The pro*ect should be understandable witho*t relying on undocumented knowledg*.

### Cost Awareness

Every AWS p*oject should include resource clea*up instructions.

## AWS Cost Cont*ol Checklist

Before starting a la*:

- Identify chargeable resources*- Select an appropriate instance s*ze
- Define resource tags
- Create*a cleanup plan

After completing t*e lab:

- Save configuration files*- Save screenshots
- Push document*tion to GitHub
- Terminate unused *C2 instances
- Delete unused EBS v*lumes
- Delete unused snapshots
- *elete load balancers
- Delete NAT *ateways if created
- Delete unused*Elastic IP addresses
- Delete test*RDS databases
- Empty and delete t*st S3 buckets if appropriate
- Des*roy Terraform-managed resources
- *eview the AWS Billing dashboard

#* Project Quality Checklist

- [ ] *roblem statement documented
- [ ] *rchitecture documented
- [ ] Secur*ty boundaries explained
- [ ] Repo*itory structure is clean
- [ ] Set*p is reproducible
- [ ] Code conta*ns no secrets
- [ ] Automation is *tored in Git
- [ ] Validation step* are documented
- [ ] Expected out*uts are included
- [ ] Screenshots*are included
- [ ] Failure scenari*s are tested
- [ ] Troubleshooting*is documented
- [ ] Rollback is va*idated
- [ ] Monitoring is configu*
