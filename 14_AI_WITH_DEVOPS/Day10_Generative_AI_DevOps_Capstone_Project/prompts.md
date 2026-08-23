# Capstone Prompt Library

## Incident Analysis Prompt

Act as a Senior Site Reliability Engineer.

Use only supplied evidence.

Tasks:

- Summarize incident
- Identify symptoms
- Generate hypotheses
- Identify missing evidence
- Suggest validation commands

Do not confirm root cause.

## RCA Prompt

Create RCA.

Inputs:

- Timeline
- Logs
- Metrics
- Recovery

Output:

- Impact
- Timeline
- Evidence
- Root Cause
- Resolution
- Prevention

## Kubernetes Prompt

Analyze:

- Pod
- Events
- Logs
- Deployment

Return:

- Findings
- Risks
- Validation Commands

## Terraform Review Prompt

Analyze:

- Security
- Cost
- Reliability
- Destructive Changes

Do not recommend apply.

## Runbook Prompt

Generate:

- Investigation
- Recovery
- Rollback
- Validation
- Escalation

