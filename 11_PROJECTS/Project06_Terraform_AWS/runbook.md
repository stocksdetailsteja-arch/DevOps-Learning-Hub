# Project 06 - Terraform AWS Runbook

## Purp*se

Operate and troubleshoot the T*rraform-managed AWS infrastructure*

## Root Configuration Directory
*terraform/

## Backend Configurati*n

backend/backend.hcl

## Standar* Validation

terraform -chdir=terr*form fmt -check -recursive

terraf*rm -chdir=terraform validate

terr*form -chdir=terraform plan \
  -va*-file=terraform.tfvars

## Standar* Change Procedure

### Step 1

Upd*te Terraform configuration in a fe*ture branch.

### Step 2

Run form*tting.

### Step 3

Run validation*

### Step 4

Create a saved plan.*
### Step 5

Review:

- Creation
-*Update
- Replacement
- Destruction*- Security impact
- Cost impact

#*# Step 6

Obtain required approval*

### Step 7

Apply the saved plan*

### Step 8

Validate:

- AWS res*
