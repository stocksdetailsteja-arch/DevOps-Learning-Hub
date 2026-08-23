# Day 05 - Roles And Reusable Configurations Concepts

## What Is A Role?

A Role is a structured way of organizing Ansible content.

Roles contain:

- Tasks
- Handlers
- Templates
- Variables
- Files

All organized into separate folders.

## Why Use Roles?

Roles help:

- Avoid duplication
- Improve readability
- Standardize automation
- Enable team collaboration

## Standard Role Structure

role_name/

- tasks/
- handlers/
- templates/
- files/
- vars/
- defaults/
- meta/

## Tasks Directory

Contains:

main.yml

Stores primary automation tasks.

Example:

- Install Nginx
- Create Directory
- Deploy Application

## Handlers Directory

Contains:

main.yml

Stores handlers such as:

- Restart Service
- Reload Configuration

## Templates Directory

Stores Jinja2 templates.

Examples:

- nginx.conf.j2
- apache.conf.j2

## Files Directory

Stores static files.

Examples:

- HTML Pages
- Shell Scripts
- Certificates

## Variables Directory

Contains role-specific variables.

Examples:

- Port Numbers
- Package Names
- User Names

## Defaults Directory

Contains default variable values.

These values can be overridden later.

## Meta Directory

Stores metadata information.

Examples:

- Author
- Dependencies
- Version Information

## Reusable Configuration

Reusable configurations allow the same automation code to work:

- Across environments
- Across projects
- Across teams

## Benefits

- Less duplication
- Easy maintenance
- Scalable automation
- Enterprise-ready deployments
