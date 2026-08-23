# Day 05 - Interview Questions

## Basic

### Q1 What Is A Terraform Module?

Reusable Terraform configuration block used to organize infrastructure.

### Q2 Why Use Modules?

To reduce duplication and improve reusability.

### Q3 What Is A Root Module?

Main Terraform working directory.

### Q4 What Is A Child Module?

Reusable module called by another configuration.

## Intermediate

### Q1 What Are Module Inputs?

Variables passed into a module.

### Q2 What Are Module Outputs?

Values exposed from a module.

### Q3 Why Do Enterprises Use Modules?

Consistency and standardization.

## Advanced (5+ Years)

### Q1 How Would You Design Enterprise Terraform Modules?

Answer:

- Single Responsibility

- Reusable Inputs

- Standard Outputs

- Documentation

- Version Control

### Q2 Why Avoid Large Monolithic Modules?

Answer:

- Difficult Maintenance

- Poor Reusability

- Hard Testing

### Q3 How Do Modules Improve DevOps?

Answer:

Infrastructure becomes reusable, predictable, and standardized.

### Q4 What Is Module Versioning?

Answer:

Controlling module changes through version management.

### Q5 How Would You Structure A Production Terraform Repository?

Answer:

modules/

├── vpc

├── ec2

├── security-group

├── alb

root/

├── dev

├── qa

└── prod

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
