# Terraform And Ansible Production Troubleshooting

# Terraform Troubleshooting

## Universal Terraform Troubleshooting Sequence

1. Confirm the exact command
2. Check syntax
3. Check Terraform version
4. Check provider version
5. Check authentication
6. Check account and Region
7. Check backend
8. Check state lock
9. Review plan differences
10. Check dependencies
11. Check quotas
12. Review cloud API errors
13. Correct the smallest confirmed issue
14. Run a new plan
15. Review before apply
16. Validate infrastructure
17. Document root cause and prevention

This sequence follows the internal Terraform workbook’s guidance to check syntax, provider authentication, backend, state lock, plan differences, dependencies, quotas and cloud errors. 【1-521d49】【2-499502】

## Scenario 1 - terraform init Fails

### Check

- Backend configuration
- Bucket or remote workspace
- Region
- Authentication
- Network connectivity
- Provider registry
- Proxy
- Terraform syntax

## Scenario 2 - Authentication Failure

### Check

- Active AWS identity
- Credential expiry
- Profile
- Assumed role
- Environment variables
- IAM permissions

### Security Rule

Do not print credential values during troubleshooting.

## Scenario 3 - State Lock Error

### Possible Causes

- Active apply
- Active CI/CD job
- Interrupted operation
- Confirmed stale lock

### Safe Response

Do not force-unlock until the lock is proven stale.

## Scenario 4 - Wrong State Selected

### Indicators

- Unexpected resource list
- Unexpected destruction
- Wrong environment names
- Different account objects

### Check

- Backend
- State key
- Workspace
- Account
- Region
- Pipeline variables

## Scenario 5 - Unexpected Resource Replacement

### Possible Causes

- Immutable property changed
- Resource address changed
- Module path changed
- count index changed
- for_each key changed
- Provider upgrade
- Region or subnet changed

### Response

Do not apply until replacement impact is understood.

## Scenario 6 - Resource Already Exists

### Possible Causes

- Manual creation
- Wrong backend
- Previous partial apply
- Resource removed from state
- Another configuration owns the object

### Response

- Confirm ownership
- Write matching configuration
- Import when appropriate
- Run a new plan
- Do not delete an unknown shared resource

## Scenario 7 - Partial Apply

### Response

- Preserve state
- Save error logs
- Inspect state
- Inspect actual resources
- Correct the root cause
- Run a new plan
- Review remaining changes
- Apply only after approval

## Scenario 8 - Provider Upgrade Changes Plan

### Response

- Stop apply
- Review provider change
- Review dependency lock file
- Test in non-production
- Compare plans
- Pin or update the constraint deliberately

## Scenario 9 - State And Infrastructure Disagree

### Check

- Correct backend
- Correct account
- Correct Region
- State list
- Actual resource
- Recent manual changes
- Import history
- State move history

### Warning

Do not edit state JSON manually.

## Scenario 10 - Destroy Fails

### Possible Causes

- Resource dependency
- Deletion protection
- Non-empty storage
- Attached interface
- Changed permissions
- Provider error

### Response

Create and review a new destruction plan after correcting the dependency.

# Ansible Troubleshooting

## Universal Ansible Troubleshooting Sequence

1. Validate inventory
2. List targeted hosts
3. Test connectivity
4. Run syntax check
5. Use check mode
6. Review variables
7. Run against one host
8. Use verbose output
9. Check privilege escalation
10. Check target permissions
11. Check target service logs
12. Validate health
13. Continue in controlled batches
14. Verify idempotency
15. Document prevention

## Scenario 11 - Host UNREACHABLE

### Check

- Inventory address
- Port
- Route
- Security Group
- Firewall
- Remote username
- Private key
- Host-key trust
- SSH service
- Bastion configuration

## Scenario 12 - Permission Denied

### Check

- Remote user
- become
- sudo
- File ownership
- Directory permissions
- Target path
- Security controls

## Scenario 13 - Python Interpreter Missing

### Symptom

Ansible modules cannot execute normally.

### Check

- Target Python installation
- Interpreter discovery
- Inventory interpreter setting
- Operating-system image

## Scenario 14 - Undefined Variable

### Check

- Variable spelling
- group_vars
- host_vars
- Role defaults
- Role vars
- Inventory variables
- Extra variables
- Environment-specific files
- Variable precedence

## Scenario 15 - Handler Not Running

### Check

- Task reported changed
- notify name matches
- Handler name matches
- Handler is loaded
- Play failed before handler execution
- Flush behaviour

## Scenario 16 - Handler Runs Every Time

### Possible Causes

- Source file changes every run
- Template contains dynamic timestamp
- Task is not idempotent
- Incorrect changed_when
- Shell command always reports changed

## Scenario 17 - Template Produces Invalid Configuration

### Safe Pattern

- Render template
- Validate candidate configuration
- Replace active configuration only after validation
- Notify handler
- Check service health
- Roll back if validation fails

## Scenario 18 - Check Mode Shows No Change But Real Run Fails

### Possible Causes

- Module has limited check-mode support
- External dependency is unavailable
- Runtime condition differs
- Handler only runs during real changes
- Permission issue appears during actual write
- Command or shell task is not safely predictable

### Lesson

Check mode is useful but not a complete production test.

## Scenario 19 - Vault Decryption Failure

### Check

- Correct Vault identity
- Correct password source
- File integrity
- Permissions
- Pipeline credentials
- Vault ID configuration

### Security Rule

Never print the Vault password or decrypted content in logs.

## Scenario 20 - Playbook Changes Every Host At Once

### Risk

A faulty configuration can create a large outage.

### Improvement

- Use limit
- Use serial
- Validate one host
- Add health checks
- Add pause or approval
- Monitor each batch
- Stop on failure

## Scenario 21 - Dynamic Inventory Is Empty

### Check

- Cloud credentials
- Region
- Inventory plugin configuration
- Filters
- Tags
- Permissions
- Network access
- Cache

## Scenario 22 - Service Restart Causes Downtime

### Possible Causes

- All hosts restart together
- No load-balancer draining
- No serial rollout
- No health validation
- Invalid configuration
- Slow startup

### Prevention

- Serial batches
- Health checks
- Drain traffic where applicable
- Validate configuration
- Monitor service readiness

## Scenario 23 - Raw shell Task Is Not Idempotent

### Improvement

- Use a purpose-built module
- Add creates or removes when valid
- Add changed_when
- Add failed_when
- Validate exit code
- Capture logs
- Test the second run

## Scenario 24 - Terraform Provisioned Hosts But Ansible Cannot Connect

### Check Terraform

- Instance state
- IP output
- Security Group
- Route
- Subnet
- Key configuration

### Check Ansible

- Inventory address
- SSH user
- Private key
- SSH port
- Host-key trust
- Python

### Lesson

Provisioning success does not guarantee configuration-management connectivity.

## Scenario 25 - Configuration Drift Reappears

### Possible Causes

- Manual server changes
- Another automation system
- Wrong inventory
- Playbook missing a resource
- Non-idempotent task
- Environment-specific override

### Response

- Identify the authoritative source
- Correct automation
- Re-run safely
- Restrict manual access
- Monitor drift
