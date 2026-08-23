#!/usr/bin/env bash

set -euo pipefail

TERRAFORM_DIRECTORY="${1:-terraform}"
PLAN_FILE="${2:-tfplan}"

terraform -chdir="${TERRAFORM_DIRECTORY}" fmt -check -recursive
terraform -chdir="${TERRAFORM_DIRECTORY}" validate

terraform -chdir="${TERRAFORM_DIRECTORY}" plan \
    -out="${PLAN_FILE}"

terraform -chdir="${TERRAFORM_DIRECTORY}" show \
    -no-color "${PLAN_FILE}" > "${TERRAFORM_DIRECTORY}/plan.txt"

echo "Terraform validation and plan creation completed."
echo "Review plan.txt before applying."
