# Day 06 - Interview Questions

## Basic

### Q1 What Is A ConfigMap?

Stores non-sensitive application configuration.

### Q2 What Is A Secret?

Stores sensitive application data.

### Q3 Why Use ConfigMaps?

Separate configuration from application code.

### Q4 Why Use Secrets?

Secure confidential information.

## Intermediate

### Q1 ConfigMap Vs Secret?

ConfigMap:

Non-Sensitive

Secret:

Sensitive

### Q2 What Is envFrom?

Injects all configuration values as environment variables.

### Q3 Can ConfigMaps Be Mounted As Files?

Yes, using volume mounts.

## Advanced (5+ Years)

### Q1 How Should Enterprises Manage Secrets?

Answer:

Kubernetes Secrets

Encryption

Access Controls

Rotation

External Secret Managers

The workbook recommends Kubernetes Secrets with encryption and access controls, and external secret integrations.

### Q2 Why Should Secrets Never Be Hardcoded?

Answer:

- Security Risk

- Credential Exposure

- Configuration Drift

### Q3 Application Cannot Read ConfigMap. What Will You Check?

Answer:

ConfigMap Exists

Namespace

Volume Mount

Environment Variable Mapping

Pod Events

### Q4 Secret Updated But Application Still Uses Old Value. Why?

Answer:

Application Restart May Be Required Depending On Consumption Method.

### Q5 How Do You Secure Production Configuration?

Answer:

- Separate Config Per Environment

- RBAC

- Encryption

- Secret Rotation

- Audit Access

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
