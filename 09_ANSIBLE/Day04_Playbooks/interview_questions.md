# Day 04 - Interview Questions

## Beginner Level

### What is an Ansible Playbook?

A Playbook is a YAML file that contains automation tasks executed on managed nodes.

### Why use Playbooks instead of Ad-Hoc commands?

Playbooks are reusable, version controlled and suitable for complex automation.

### What is YAML?

A human-readable data serialization language used by Ansible.

### What is Idempotency?

Running the same playbook multiple times produces the same result without unwanted changes.

### What is a Handler?

A task executed only when notified by another task.

## Intermediate Level

### Difference between Play and Task?

Play:
- Defines target hosts

Task:
- Individual action

### What are Tags?

Tags allow selective execution of tasks.

### What happens if YAML indentation is incorrect?

Playbook execution fails.

### Explain Check Mode.

Check Mode simulates execution without making changes.

### Explain Variables.

Variables store dynamic values for reuse across playbooks.

## Advanced Level (5+ Years)

### How do you structure playbooks for enterprise environments?

- Separate roles
- Environment-specific variables
- CI/CD integration
- Git version control
- Vault for secrets

### How do you achieve zero downtime deployments?

- Rolling deployments
- Load balancer integration
- Canary deployments
- Health checks

### How would you handle secrets?

- Ansible Vault
- AWS Secrets Manager
- HashiCorp Vault

### Why can playbooks become slow?

- Large inventories
- Sequential execution
- Fact gathering
- Complex loops

### How do you optimize playbook performance?

- Disable unnecessary facts
- Parallel execution
- Efficient modules
- Reduce SSH overhead

### Explain Strategy Plugins.

Strategy plugins determine how tasks execute across servers.

Examples:

- linear
- free

### Explain a production incident solved using Ansible.

A failed Nginx configuration was deployed across 100 servers.

Ansible handler detected config changes and restarted only affected nodes.

Rollback was completed using Git version control and previous playbook version.
