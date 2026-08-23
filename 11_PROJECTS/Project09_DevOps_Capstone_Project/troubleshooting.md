# Troubleshooting

## Scenario 1

GitHub Webhook Failure

Check:

- Repository Settings
- Jenkins URL
- Jenkins Logs

## Scenario 2

Build Failure

Check:

- Maven
- Dependencies
- Unit Tests

## Scenario 3

Docker Push Failure

Check:

- Registry
- Authentication
- Permissions

## Scenario 4

Terraform Failure

Check:

- Provider
- Backend
- State Lock

## Scenario 5

Ansible Failure

Check:

- Inventory
- SSH
- Variables

## Scenario 6

Kubernetes Pods Not Running

Check:

kubectl describe pod

kubectl logs

## Scenario 7

Prometheus Target Down

Check:

Exporter

Network

Firewall

## Scenario 8

Grafana Dashboard Empty

Check:

Datasource

Query

## Scenario 9

Deployment Rollout Failure

Check:

kubectl rollout status

kubectl rollout history

## Scenario 10

Application Unreachable

Check:

Ingress

Service

Endpoints

DNS
