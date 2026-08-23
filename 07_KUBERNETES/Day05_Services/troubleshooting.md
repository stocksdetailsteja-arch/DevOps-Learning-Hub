# Day 05 - Kubernetes Services Troubleshooting

## Scenario 1

Service Created But Application Not Reachable

Cause:

Incorrect Selector

Resolution:

Verify Labels And Selectors.

## Scenario 2

No Endpoints Available

Cause:

Pods Not Matching Service

Resolution:

Review Labels.

## Scenario 3

NodePort Service Not Accessible

Cause:

Network Configuration

Resolution:

Review Security Rules.

## Scenario 4

DNS Resolution Failure

Cause:

Service Configuration Problem

Resolution:

Verify Service And Namespace.

## Scenario 5 (5+ Years)

Production Traffic Not Reaching Pods

Investigation:

- Service

- Endpoints

- Pods

- Network Policies

Resolution:

Validate Traffic Flow.

## Scenario 6 (5+ Years)

Intermittent Application Failure

Investigation:

- Service Health

- Pod Restarts

- Endpoint Changes

Resolution:

Review Cluster Events.

## Scenario 7 (5+ Years)

LoadBalancer Not Provisioned

Investigation:

- Cloud Controller

- Service Definition

- Cloud Resources

Resolution:

Verify LoadBalancer Configuration.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
