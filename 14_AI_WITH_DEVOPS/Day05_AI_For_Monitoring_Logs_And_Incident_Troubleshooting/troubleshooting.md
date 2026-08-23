# AI Incident Troubleshooting

## AI Suggested Wrong Root Cause

Check:

- Evidence
- Logs
- Metrics
- Validation

Never accept AI output without verification.

The workbook explicitly states root cause conclusions must be verified. 【1-6cbcf6】【2-6a1aad】

## Missing Logs

Collect:

- Application Logs
- System Logs
- Kubernetes Logs

## Missing Metrics

Collect:

- CPU
- Memory
- Disk
- Network

## AI Hallucination

Symptoms:

- Non Existing Services
- Invalid Commands
- Unsupported Features

Action:

Validate manually.

## Kubernetes Crash Investigation

Collect:

kubectl logs

kubectl describe pod

kubectl get events

## High CPU Incident

Collect:

top

htop

Prometheus Metrics

## Memory Leak Incident

Collect:

free -h

VM Statistics

Application Metrics

## Network Issue

Collect:

ss -tunlp

netstat -tunlp

Cloud Metrics

## AWS Incident

Collect:

CloudWatch Logs

CloudTrail Events

Resource Status

AWS workbook recommends collecting CloudTrail events, CloudWatch metrics/logs, resource state and deployment changes during incidents. 【3-e9c643】【4-5d52de】

## Production Incident Checklist

✅ Timeline

✅ Logs

✅ Metrics

✅ Alerts

✅ Recent Changes

✅ Topology

✅ Validation

This checklist comes directly from the AI workbook evidence pack guidance. 【1-6cbcf6】【2-6a1aad】
