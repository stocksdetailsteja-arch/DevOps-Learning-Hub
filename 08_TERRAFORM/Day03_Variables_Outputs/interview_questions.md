# Day 03 - Interview Questions

## Basic

### Q1 What Is A Variable In Terraform?

A mechanism for passing values into infrastructure configurations.

### Q2 Why Use Variables?

To make code reusable and configurable.

### Q3 What Is A tfvars File?

File used to supply variable values.

### Q4 What Is An Output Variable?

Used to display infrastructure information after deployment.

## Intermediate

### Q1 Difference Between Variables And Locals?

Variables:

External Input

Locals:

Internal Calculated Values

### Q2 Why Use Sensitive Variables?

Protect confidential information.

### Q3 Why Use Outputs?

Share infrastructure details with users and pipelines.

## Advanced (5+ Years)

### Q1 Why Do Enterprises Use Variables Heavily?

Answer:

- Environment Separation

- Code Reuse

- Standardization

- Automation

### Q2 How Would You Manage Dev, QA, And Prod?

Answer:

Same Terraform Code

↓

Different tfvars Files

↓

Different Environments

### Q3 Why Avoid Hardcoding Values?

Answer:

Improves Flexibility And Maintainability.

### Q4 Outputs Not Displayed. What Will You Check?

Answer:

Output Block

Apply Execution

Terraform State

Resource Availability

### Q5 How Do Variables Improve CI/CD?

Answer:

Pipelines can pass different values dynamically.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
