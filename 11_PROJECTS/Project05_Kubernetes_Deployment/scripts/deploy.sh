#!/usr/bin/env bash

set -euo pipefail

NAMESPACE="devops-portfolio"
DEPLOYMENT="springboot-application"

kubectl apply --dry-run=client -f manifests/00-namespace.yaml
kubectl apply -f manifests/00-namespace.yaml

if ! kubectl get secret springboot-secret \
    -n "${NAMESPACE}" >/dev/null 2>&1; then
    echo "Required Secret springboot-secret was not found."
    echo "Create it securely before deploying."
    exit 1
fi

kubectl apply --dry-run=client -k manifests
kubectl apply -k manifests

kubectl rollout status \
    "deployment/${DEPLOYMENT}" \
    -n "${NAMESPACE}" \
    --timeout=180s

kubectl get pods \
    -n "${NAMESPACE}" \
    -o wide

kubectl get service \
    -n "${NAMESPACE}"

kubectl get endpoints \
    -n "${NAMESPACE}"

echo "Deployment validation completed."
``
