# Day 06 - Ansible Galaxy And Collections Concepts

## What Is Ansible Galaxy?

Ansible Galaxy is a centralized repository for sharing and downloading:

- Roles
- Collections

It enables teams to reuse automation created by the community or internally.

## What Is A Role?

A Role is a reusable automation component.

Examples:

- nginx role
- docker role
- mysql role

## What Is A Collection?

A Collection is a package that contains:

- Modules
- Plugins
- Roles
- Documentation

Collections are the modern way of extending Ansible functionality.

## Role Vs Collection

Role:

- Task-oriented automation

Collection:

- Complete package of modules and plugins

## Why Collections?

Collections solve:

- Namespace conflicts
- Version management
- Dependency challenges

## Galaxy Repository

Galaxy contains:

- Official Roles
- Community Roles
- Certified Collections
- Vendor-supported Collections

## Popular Collections

### AWS

amazon.aws

### Kubernetes

kubernetes.core

### VMware

community.vmware

### Docker

community.docker

### Azure

azure.azcollection

## Collection Structure

collection/

- docs/
- plugins/
- roles/
- tests/

## Namespace

Collections use namespaces.

Example:

amazon.aws.ec2_instance

This prevents conflicts between different vendors.

## Benefits

- Standardization
- Reusability
- Faster automation
- Enterprise support
- Improved maintainability
