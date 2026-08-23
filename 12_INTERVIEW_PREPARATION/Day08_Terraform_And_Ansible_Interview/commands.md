# Terraform And Ansible Interview Commands

# Terraform Commands

## Verify Terraform

terraform version

## Initialize Terraform

terraform init

## Upgrade Providers

terraform init -upgrade

## Reconfigure Backend

terraform init -reconfigure

## Migrate State

terraform init -migrate-state

## Format Configuration

terraform fmt

terraform fmt -recursive

## Check Formatting

terraform fmt -check -recursive

## Validate Configuration

terraform validate

## Create Plan

terraform plan

## Save Plan

terraform plan -out=tfplan

## Show Saved Plan

terraform show tfplan

## Save Plan As Text

terraform show -no-color tfplan > plan.txt

## Apply Configuration

terraform apply

## Apply Saved Plan

terraform apply tfplan

## View Outputs

terraform output

## View Specific Output

terraform output <output-name>

## List State Resources

terraform state list

## Inspect State Resource

terraform state show <resource-address>

## Move State Address

terraform state mv \
  <old-resource-address> \
  <new-resource-address>

## Remove Resource From State

terraform state rm <resource-address>

## Important Warning

terraform state rm stops Terraform from tracking the resource.

It does not delete the real infrastructure object.

## Import Existing Resource

terraform import \
  <resource-address> \
  <resource-id>

## Refresh-Only Plan

terraform plan -refresh-only

## Refresh-Only Apply

terraform apply -refresh-only

## List Providers

terraform providers

## View Dependency Graph

terraform graph

## List Workspaces

terraform workspace list

## Create Workspace

terraform workspace new dev

## Select Workspace

terraform workspace select dev

## Create Destruction Plan

terraform plan -destroy -out=destroy.tfplan

## Review Destruction Plan

terraform show destroy.tfplan

## Apply Reviewed Destruction Plan

terraform apply destroy.tfplan

## Direct Destroy

terraform destroy

## Enable Terraform Logs

TF_LOG=DEBUG terraform plan

## Write Terraform Logs To File

TF_LOG=DEBUG \
TF_LOG_PATH=terraform-debug.log \
terraform plan

# Ansible Commands

## Verify Ansible

ansible --version

## Display Configuration

ansible-config dump

## List Inventory

ansible-inventory --list

## Display Inventory Graph

ansible-inventory --graph

## List Hosts

ansible all --list-hosts

## Test Connectivity

ansible all -m ping

## Gather Facts

ansible all -m setup

## Run Ad-Hoc Command

ansible all -m command -a "uptime"

## Check Disk Usage

ansible all -m command -a "df -h"

## Check Service

ansible web -m service \
  -a "name=nginx state=started" \
  --check

## Playbook Syntax Check

ansible-playbook playbooks/site.yml \
  --syntax-check

## Run Playbook

ansible-playbook playbooks/site.yml

## Run With Inventory

ansible-playbook \
  -i inventories/dev/hosts.ini \
  playbooks/site.yml

## Check Mode

ansible-playbook playbooks/site.yml \
  --check

## Check And Diff Mode

ansible-playbook playbooks/site.yml \
  --check \
  --diff

## Limit Hosts

ansible-playbook playbooks/site.yml \
  --limit web01

## Run Tags

ansible-playbook playbooks/site.yml \
  --tags nginx

## Skip Tags

ansible-playbook playbooks/site.yml \
  --skip-tags application

## Start At Task

ansible-playbook playbooks/site.yml \
  --start-at-task "Install Nginx"

## List Tasks

ansible-playbook playbooks/site.yml \
  --list-tasks

## List Tags

ansible-playbook playbooks/site.yml \
  --list-tags

## Verbose Output

ansible-playbook playbooks/site.yml -vvv

## Very Verbose Output

ansible-playbook playbooks/site.yml -vvvv

## Encrypt File

ansible-vault encrypt group_vars/all/vault.yml

## Decrypt File

ansible-vault decrypt group_vars/all/vault.yml

## View Encrypted File

ansible-vault view group_vars/all/vault.yml

## Edit Encrypted File

ansible-vault edit group_vars/all/vault.yml

## Rekey Vault File

ansible-vault rekey group_vars/all/vault.yml

## Create Role

ansible-galaxy role init roles/nginx

## Install Role Requirements

ansible-galaxy role install \
  -r requirements.yml

## Install Collection Requirements

ansible-galaxy collection install \
  -r requirements.yml
