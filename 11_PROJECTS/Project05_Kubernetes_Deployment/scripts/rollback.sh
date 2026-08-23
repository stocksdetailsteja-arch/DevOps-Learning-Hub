#!/usr/bin/env bash

set -euo pipefail

NAMESPACE="devops-portfolio"
DEPLOYMENT="springboot-application"

kubectl rollout history \
    "deployment/${DEPLOYMENT}" \
    -n "${NAMESPACE}"

kubectl rollout undo \
    "deployment/${DEPLOYMENT}" \
    -n "${NAMESPACE}"

kubectl rollout status \
    "deployment/${DEPLOYMENT}" \
    -n "${NAMESPACE}" \
    --timeout=180s

kubectl get pods \
    -n "${NAMESPACE}" \
    -o wide

echo "Rollback completed and rollout status is successful."
