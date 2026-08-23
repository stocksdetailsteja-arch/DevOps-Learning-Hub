# Terraform Commands Cheat Sheet

## Check Version

terraform version

## Initialize

terraform init

## Upgrade Providers

terraform init -upgrade

## Validate Configuration

terraform validate

## Format Code

terraform fmt

terraform fmt -recursive

## Plan Infrastructure

terraform plan

## Save Plan

terraform plan -out=tfplan

## Show Plan

terraform show tfplan

## Apply Changes

terraform apply

## Apply Saved Plan

terraform apply tfplan

## Destroy Infrastructure

terraform destroy

## View Outputs

terraform output

## List Resources

terraform state list

## Inspect Resource

terraform state show resource_name

## Import Resource

terraform import resource_name resource_id

## Providers

terraform providers

## Workspaces

terraform workspace list

terraform workspace new dev

terraform workspace select dev

## Refresh State

terraform plan -refresh-only

## Dependency Graph

terraform graph

## Enable Debug Logs

TF_LOG=DEBUG terraform plan

## Remove Resource From State

terraform state rm resource_name

## Move State

terraform state mv old_resource new_resource
