i# Day 06 - Interview Questions

## Beginner Level

### What is Ansible Galaxy?

Ansible Galaxy is a repository for sharing Roles and Collections.

### What is a Collection?

A Collection is a package containing modules, plugins, and Roles.

### Why use Galaxy?

To reuse automation and reduce development effort.

### How do you install a Role?

ansible-galaxy install role_name

### How do you install a Collection?

ansible-galaxy collection install collection_name

## Intermediate Level

### Difference between Roles and Collections?

Role:

- Automation content

Collection:

- Complete package containing Roles, modules and plugins

### Why were Collections introduced?

To provide:

- Better organization
- Versioning
- Namespaces

### What is a Namespace?

A logical grouping that prevents naming conflicts.

Example:

amazon.aws

community.docker

### What is requirements.yml?

A dependency file used for bulk installation of Roles and Collections.

### How do you manage external dependencies?

Using:

- requirements.yml
- Version pinning
- Internal repositories

## Advanced Level (5+ Years)

### How do enterprises use Ansible Galaxy?

Most enterprises create:

- Internal Roles
- Internal
