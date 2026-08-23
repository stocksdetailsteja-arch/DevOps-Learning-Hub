# Ansible Interview Questions

## Beginner

### What Is Ansible?

Agentless configuration management tool.

### What Is Inventory?

List of managed systems.

### What Is A Playbook?

YAML automation workflow.

### What Is A Role?

Reusable automation structure.

## Intermediate

### What Is Idempotency?

Repeated execution produces same result.

### What Are Facts?

Host information collected automatically.

### What Are Handlers?

Tasks executed only upon notification.

### What Is Vault?

Sensitive data encryption.

## Advanced (5+ Years)

### Explain Ansible Architecture.

Control Node manages automation over SSH without installing agents.

### Explain Role-Based Design.

Roles separate reusable automation logic and improve maintainability.

### How Would You Troubleshoot Playbook Failure?

- Inventory
- Connectivity
- SSH
- Variables
- Syntax
- Module Logs

### Explain Real Production Incident.

Deployment failed because Nginx configuration template contained invalid syntax.

Investigation:

- Validate template
- Check Playbook Logs
- Verify Handler Execution

Resolution:

- Fix template
- Re-run automation
- Validate service
