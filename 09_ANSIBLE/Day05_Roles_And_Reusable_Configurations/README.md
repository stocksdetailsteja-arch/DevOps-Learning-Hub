i# Day 05 - Roles And Reusable Configurations

## Objective

Learn how to organize Ansible automation using Roles and reusable configurations.

As playbooks grow larger, managing everything in a single YAML file becomes difficult. Roles help divide automation into reusable and maintainable components.

In this module you will learn:

- What are Roles
- Why Roles are important
- Role directory structure
- Creating Roles
- Using Roles in Playbooks
- Variables inside Roles
- Handlers inside Roles
- Reusability concepts
- Production best practices

## Why Roles?

Without Roles:

- Large playbooks become difficult to manage
- Code duplication increases
- Maintenance becomes difficult

With Roles:

- Better organization
- Reusability
- Scalability
- Team collaboration
- Cleaner project structure

## Real World Example

A company may have:

- Web Servers
- Application Servers
- Database Servers

Separate Roles can be created for:

- nginx_role
- tomcat_role
- mysql_role

These Roles can be reused across multiple projects.

## Expected Outcome

By the end of this lesson you will be able to:

- Create Ansible Roles
- Organize automation code
- Reuse configurations
- Follow enterprise-grade Ansible project structures
