# Day 08 - Practice Session

## Lab 1 - Verify Tools

Run:

terraform version

ansible --version

Capture:

01_tool_versions.png

## Lab 2 - Review Terraform Configuration

Inspect:

- versions.tf
- providers.tf
- variables.tf
- main.tf
- outputs.tf
- backend configuration
- modules

Explain the purpose of each file without referring to notes.

Capture:

02_terraform_structure.png

## Lab 3 - Terraform Formatting And Validation

Run:

terraform fmt -check -recursive

terraform validate

Record:

- Formatting result
- Validation result
- Any errors corrected

Capture:

03_terraform_validation.png

## Lab 4 - Terraform Plan Review

Run:

terraform plan -out=tfplan

terraform show -no-color tfplan > plan.txt

Review:

- Additions
- Updates
- Replacements
- Destructions
- Security changes
- Cost impact
- Sensitive values
- Unexpected provider changes

Capture:

04_terraform_plan.png

## Lab 5 - Inspect State

Run:

terraform state list

terraform state show <resource-address>

Do not capture sensitive state content.

Capture:

05_terraform_state.png

## Lab 6 - Practice Drift Detection

Make a safe, controlled non-production change outside Terraform.

Run:

terraform plan

or:

terraform plan -refresh-only

Document:

- Drift introduced
- Plan difference
- Approved resolution
- Validation

Capture:

06_drift_detection.png

## Lab 7 - Practice Import In A Lab

Create matching Terraform configuration for an existing lab resource.

Run:

terraform import \
  <resource-address> \
  <resource-id>

Run:

terraform plan

Document any difference between configuration and the imported object.

Capture:

07_terraform_import.png

## Lab 8 - Practice State Lock Discussion

Explain:

- Why locking exists
- What may create a stale lock
- Why force-unlock is dangerous
- How to verify whether an operation is still active
- What evidence must be collected

Capture:

08_state_lock_notes.png

## Lab 9 - Validate Ansible Inventory

Run:

ansible-inventory --graph

ansible all --list-hosts

Check:

- Host addresses
- Group membership
- Variables
- Environment selection

Capture:

09_inventory_validation.png

## Lab 10 - Test Ansible Connectivity

Run:

ansible all -m ping

If a host is unreachable, check:

- Inventory address
- SSH port
- Network route
- Security Group
- Remote user
- Private key
- SSH service

Capture:

10_ansible_ping.png

## Lab 11 - Validate Playbook

Run:

ansible-playbook playbooks/site.yml \
  --syntax-check

Capture:

11_playbook_syntax.png

## Lab 12 - Check Mode And Diff

Run:

ansible-playbook playbooks/site.yml \
  --check \
  --diff

Review the predicted changes.

Ensure sensitive content is not included in screenshots.

Capture:

12_check_mode.png

## Lab 13 - Execute Controlled Rollout

Run against one lab server first:

ansible-playbook playbooks/site.yml \
  --limit web01

Validate:

- Configuration
- Service
- Port
- Application response
- Logs

Then continue to the remaining lab hosts only after validation.

Capture:

13_limited_rollout.png

## Lab 14 - Validate Idempotency

Run the same playbook again.

Expected:

- No unnecessary changes
- No repeated service restart without a real change
- No uncontrolled file modifications

Document the actual result.

Capture:

14_idempotency.png

## Lab 15 - Test Handler Behaviour

Change a managed template safely.

Run the playbook.

Verify:

- Template reports changed
- Handler is notified
- Service reload or restart occurs
- Service health succeeds

Run again without changes.

Verify the handler is not unnecessarily triggered.

Capture:

15_handler_execution.png

## Lab 16 - Test Ansible Vault

Create a lab Vault file.

Do not use production credentials.

Run:

ansible-vault encrypt group_vars/all/vault.yml

ansible-vault view group_vars/all/vault.yml

Do not capture decrypted values.

Capture:

16_vault_validation.png

## Lab 17 - Simulate Ansible Permission Failure

Use a controlled target path where the remote user lacks permissions.

Investigate:

- Remote user
- become
- sudo
- File ownership
- Directory permissions

Restore safe configuration after the exercise.

Capture:

17_permission_failure.png

## Lab 18 - Terraform And Ansible Integration Discussion

Explain this workflow:

Terraform apply

↓

Terraform output

↓

Inventory generation

↓

Ansible connectivity check

↓

Ansible check mode

↓

Limited configuration rollout

↓

Health validation

↓

Full rollout

## Lab 19 - Interview Self-Assessment

Answer without reading:

- Terraform state purpose
- Remote backend purpose
- State locking
- Drift
- Import
- Partial apply
- Ansible idempotency
- Inventory
- Role
- Handler
- Vault
- Serial rollout

## Lab 20 - GitHub Review

Before committing:

- Remove state files
- Remove plan files
- Remove Terraform variable files containing sensitive values
- Remove private keys
- Remove Vault-password files
- Remove plaintext secrets
- Review screenshots
- Validate `.gitignore`

Capture:

18_github_validation.png
