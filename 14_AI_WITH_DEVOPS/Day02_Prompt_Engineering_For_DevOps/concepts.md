# Prompt Engineering Concepts

# What Is Prompt Engineering?

Prompt Engineering is the process of designing instructions that help AI generate accurate and useful outputs.

# Basic Prompt Structure

Role

+

Task

+

Requirements

+

Output Format

Example:

Act as a Senior DevOps Engineer.

Create a Dockerfile for a Spring Boot application.

Requirements:

- Non-root user
- Multi-stage build
- Production ready
- Security best practices

Output:

Dockerfile Only

# Role-Based Prompting

Examples:

Act As:

- Linux Administrator
- Cloud Engineer
- DevOps Engineer
- SRE Engineer
- Platform Engineer

Benefits:

- Better Context
- Better Accuracy

# Zero Shot Prompt

Direct Instruction Without Example.

Example:

Create a Kubernetes Deployment.

# Few Shot Prompt

Provide Examples First.

Example:

Input Example

↓

Expected Example

↓

New Request

# Chain Of Thought Prompting

Request explanation of reasoning.

Example:

Explain your solution step by step.

Benefits:

- Better Troubleshooting
- Better Learning

# DevOps Prompt Formula

Role

↓

Technology

↓

Requirements

↓

Constraints

↓

Output Format

# Infrastructure Prompt Example

Act as a Senior AWS Cloud Engineer.

Create Terraform code for:

- VPC
- Public Subnet
- EC2

Requirements:

- Least Privilege
- Cost Optimized
- Tagged Resources

Output:

main.tf
variables.tf
outputs.tf

# Kubernetes Prompt Example

Act as a Kubernetes Platform Engineer.

Create:

- Deployment
- Service
- HPA

Requirements:

- Readiness Probe
- Liveness Probe
- Resource Limits

# Monitoring Prompt Example

Analyze these logs.

Provide:

- Symptoms
- Evidence
- Root Cause Hypotheses
- Recommended Investigation Steps

The AI workbook states that incident investigation should separate symptoms, evidence, hypotheses, tests and confirmed cause. 【1-666175】【2-945384】

# Documentation Prompt Example

Generate:

README.md

Including:

- Architecture
- Setup
- Commands
- Troubleshooting

# Common Prompt Mistakes

- Too Vague
- Missing Context
- Missing Requirements
- No Security Requirements
- No Output Format

# Hallucination Prevention

Request:

- Assumptions
- Risks
- Validation Steps
- Security Review

The AI workbook warns that generated outputs may contain incorrect assumptions and must be reviewed carefully. 【1-666175】【2-945384】
