# Day 06 - ConfigMaps & Secrets Concepts

## Why ConfigMaps?

Applications require configuration.

Examples:

- Database URL

- Application Mode

- API Endpoint

- Feature Flags

Configuration should not be hardcoded.

## What Is A ConfigMap?

A ConfigMap stores non-sensitive configuration data.

Examples:

DATABASE_NAME

APPLICATION_MODE

API_URL

ConfigMaps provide external configuration management.

## Why Secrets?

Some values are sensitive.

Examples:

- Passwords

- API Tokens

- Database Credentials

- Certificates

Sensitive values should be stored in Kubernetes Secrets.

## What Is A Secret?

A Secret stores confidential data securely.

Examples:

DB_PASSWORD

JWT_SECRET

API_TOKEN

## ConfigMap Vs Secret

ConfigMap:

Non-Sensitive Data

Examples:

Application Config

URLs

Ports

Secret:

Sensitive Data

Examples:

Passwords

Tokens

Keys

## Configuration Injection Methods

Environment Variables

ConfigMap

↓

Pod

↓

Environment Variables

envFrom

ConfigMap

↓

Automatically Inject Multiple Variables

Volume Mount

ConfigMap

↓

Mounted As Files

↓

Application Reads Files

The workbook specifically highlights envFrom and volume mounts.

## Secret Injection

Secret

↓

Pod

↓

Application

↓

Secure Configuration Access

## Production Architecture

Application

↓

ConfigMap

↓

Runtime Configuration

Application

↓

Secret

↓

Sensitive Configuration

## Real World Example

Spring Boot Application

↓

ConfigMap

↓

APP_ENV=PROD

↓

Secret

↓

DATABASE_PASSWORD

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
