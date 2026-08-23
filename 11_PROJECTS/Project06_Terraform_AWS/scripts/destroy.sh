#!/usr/bin/env bash

set -euo pipefail

TERRAFORM_DIRECTORY="${1:-terraform}"
DESTROY_PLAN="destroy.tfplan"

echo "Creating Terraform destruction plan."

terraform -chdir="${TERRAFORM_DIRECTORY}" plan \
    -destroy \
    -out="${DESTROY_PLAN}"

terraform -chdir="${TERRAFORM_DIRECTORY}" show \
    -no-color "${DESTROY_PLAN}"

echo "Review the destruction plan carefully."
echo "Apply it manually only after confirming the targeted resources."
echo
echo "Command:"
echo "terraform -chdir=${TERRAFORM_DIRECTORY} apply ${DESTROY_PLAN}"
``
