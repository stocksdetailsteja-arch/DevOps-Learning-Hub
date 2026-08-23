# Project 06 - Terraform AWS Commands

## Verify Terraform

terraform version

## Verify AWS CLI

aws --version

## Verify AWS Identity

aws sts get-caller-identity

## Create Project Directories

mkdir -p Project06_Terraform_AWS/{backend,environments/dev,environments/prod,modules,terraform,scripts,screenshots}

mkdir -p Project06_Terraform_AWS/modules/{vpc,security,compute,load_balancer}

## View Project Structure

tree Project06_Terraform_AWS

## Prepare Backend Bucket

chmod 755 scripts/bootstrap-backend.sh

./scripts/bootstrap-backend.sh \
  <globally-unique-bucket-name> \
  ap-south-1

## Verify Backend Versioning

aws s3api get-bucket-versioning \
  --bucket <bucket-name>

## Verify Public Access Block

aws s3api get-public-access-block \
  --bucket <bucket-name>

## Initialize Terraform

terraform -chdir=terraform init \
  -backend-config=../backend/backend.hcl

## Reconfigure Backend

terraform -chdir=terraform init \
  -reconfigure \
  -backend-config=../backend/backend.hcl

## Migrate State

terraform -chdir=terraform init \
  -migrate-state \
  -backend-config=../backend/backend.hcl

## Format Configuration

terraform -chdir=terraform fmt -recursive

## Check Formatting

terraform -chdir=terraform fmt -check -recursive

## Validate Configuration

terraform -chdir=terraform validate

## Create Plan

terraform -chdir=terraform plan \
  -out=tfplan

## Create Plan With Variables

terraform -chdir=terraform plan \
  -var-file=terraform.tfvars \
  -out=tfplan

## Show Saved Plan

terraform -chdir=terraform show tfplan

## Save Human-Readable Plan

terraform -chdir=terraform show \
  -no-color tfplan > terraform/plan.txt

## Apply Saved Plan

terraform -chdir=terraform apply tfplan

## View Outputs

terraform -chdir=terraform output

## Show Application URL

terraform -chdir=terraform output \
  -raw application_url

## Validate Application

curl -f "$(
  terraform -chdir=terraform output \
    -raw application_url
)"

## List State Resources

terraform -chdir=terraform state list

## Show State Resource

terraform -chdir=terraform state show \
  module.vpc.aws_vpc.this

## Refresh And Detect Drift

terraform -chdir=terraform plan \
  -refresh-only

## Apply Refresh-Only Plan

terraform -chdir=terraform apply \
  -refresh-only

## Import Existing Resource

terraform -chdir=terraform import \
  <terraform-resource-address> \
  <aws-resource-id>

## Move State Address

terraform -chdir=terraform state mv \
  <old-resource-address> \
  <new-resource-address>

## Remove Resource From State

terraform -chdir=terraform state rm \
  <resource-address>

## Important State Removal Warning

Removing a resource from state does not delete the AWS object.

Review the impact before using state rm.

## View Providers

terraform -chdir=terraform providers

## Lock Provider Versions

terraform -chdir=terraform init

## Upgrade Providers

terraform -chdir=terraform init -upgrade

## Create Destruction Plan

terraform -chdir=terraform plan \
  -destroy \
  -out=destroy.tfplan

## Review Destruction Plan

terraform -chdir=terraform show \
  destroy.tfplan

## Apply Destruction Plan

terraform -chdir=terraform apply \
  destroy.tfplan

## Direct Destroy

terraform -chdir=terraform destroy

## View Terraform State Bucket

aws s3 ls \
  s3://<bucket-name>/project06/dev/

## Validate AWS Resources

aws ec2 describe-vpcs

aws ec2 describe-subnets

aws ec2 describe-instances

aws elbv2 describe-load-balancers

aws elbv2 describe-target-health \
  --target-group-arn <target-group-arn>

## Search For Sensitive Files

find . \
  -type f \
  \( \
    -name "*.tfstate" \
    -o -name "*.tfstate.*" \
    -o -name "*.pem" \
    -o -name "*.key" \
  \)

## Search For Creden*ial Patterns

grep -RniE \
  "acce*s.?key|secret.?key|password|privat*.?key|token" \
  .

## Git Validat*on

git status

git diff --check

*# Commit Project

git add Project0*_Terraform_AWS

git commit -m "Add*reusable Terraform AWS infrastruct*re project"

git push origin main
*
