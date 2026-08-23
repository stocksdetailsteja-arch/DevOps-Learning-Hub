#!/usr/bin/env bash

set -euo pipefail

NAMESPACE="devops-portfolio"
DEPLOYMENT="springboot-application"
SERVICE="springboot-service"

kubectl get namespace "${NAMESPACE}" >/dev/null

kubectl rollout status \
    "deployment/${DEPLOYMENT}" \
    -n "${NAMESPACE}" \
    --timeout=180s

READY_REPLICAS="$(
    kubectl get deployment "${DEPLOYMENT}" \
        -n "${NAMESPACE}" \
        -o jsonpath='{.status.readyReplicas}'
)"

DESIRED_REPLICAS="$(
    kubectl get deployment "${DEPLOYMENT}" \
        -n "${NAMESPACE}" \
        -o jsonpath='{.spec.replicas}'
)"

if [[ "${READY_REPLICAS:-0}" != "${DESIRED_REPLICAS}" ]]; then
    echo "Ready replicas do not match desired replicas."
    exit 1
fi

ENDPOINT_COUNT="$(
    kubectl get endpoints "${SERVICE}" \
        -n "${NAMESPACE}" \
        -o jsonpath='{.subsets[*].addresses[*].ip}' |
        wc -w
)"

if (( ENDPOINT_COUNT < 1 )); then
    echo "Service has no ready endpoints."
    exit 1
fi

kubectl get pods \
    -n "${NAMESPACE}" \
    -o wide

kubectl get service "${SERVICE}" \
    -n "${NAMESPACE}"

echo "Kubernetes deployment validation succeeded."
