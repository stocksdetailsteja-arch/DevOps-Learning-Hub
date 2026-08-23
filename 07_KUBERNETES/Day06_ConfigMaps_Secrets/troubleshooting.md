# Day 06 - ConfigMaps & Secrets Troubleshooting

## Scenario 1

ConfigMap Not Found

Cause:

Wrong Namespace

Resolution:

Verify Namespace.

## Scenario 2

Secret Not Accessible

Cause:

Incorrect Reference

Resolution:

Verify Secret Name.

## Scenario 3

Application Startup Failure

Cause:

Missing Environment Variable

Resolution:

Review Configuration Mapping.

## Scenario 4

Volume Mount Failure

Cause:

Incorrect Mount Path

Resolution:

Validate Volume Configuration.

## Scenario 5 (5+ Years)

Production Secret Exposure

Investigation:

- Access Controls

- RBAC

- Audit Logs

Resolution:

Rotate Secret And Restrict Access.

## Scenario 6 (5+ Years)

Configuration Drift Between Environments

Investigation:

- ConfigMaps

- Deployment Manifests

Resolution:

Use Environment-Specific Configuration.

## Scenario 7 (5+ Years)

Application Works In Test But Fails In Production

Investigation:

- Environment Variables

- ConfigMaps

- Secrets

- Mounted Files

Resolution:

Compare Runtime Configuration.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
