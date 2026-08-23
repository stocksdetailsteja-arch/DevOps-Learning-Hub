# AI For CI/CD Interview Questions

## How Can AI Help CI/CD?

- Pipeline Generation
- Automation Scripts
- Documentation
- Build Analysis
- RCA Generation

## Can AI Create Jenkins Pipelines?

Yes.

AI can generate Jenkinsfiles, but they must be reviewed before execution. 【1-8cbc7e】【2-7d1427】

## Can AI Generate GitHub Actions?

Yes.

AI can create workflow YAML definitions.

## What Should Be Reviewed In AI Generated Pipelines?

- Security
- Credentials
- Deployment Logic
- Rollback Logic
- Notifications

## Biggest Risk With AI Generated Pipelines?

Deploying untested automation.

## What Security Issues Can AI Introduce?

- Hardcoded Secrets
- Excessive Permissions
- Public Exposure

## Why Is Rollback Important?

To quickly restore service after deployment failure.

## How Would You Use AI For RCA?

Provide:

- Logs
- Timeline
- Events
- Metrics

Then validate findings manually.

The workbook states that root-cause conclusions must be verified and evidence reviewed. 【1-8cbc7e】【2-7d1427】

## Can AI Replace CI/CD Engineers?

No.

AI accelerates delivery but engineers remain responsible for correctness and safety.

## What Is The Safe AI Workflow?

Generate

↓

Review

↓

Validate

↓

Test

↓

Deploy
