# Day 09 - Practice Session

## Lab 1 - Create Project Workspace

Create:

- projects/ai-log-analyzer
- projects/ai-rca-assistant
- projects/ai-kubernetes-troubleshooter
- projects/ai-infrastructure-reviewer
- projects/ai-cicd-failure-analyzer
- projects/ai-cloud-cost-advisor
- projects/ai-runbook-generator

Capture:

01_project_structure.png

## Lab 2 - Build AI Log Analyzer Prototype

Create a synthetic application log containing:

- Successful requests
- Warning messages
- One repeated failure
- Timestamps
- Request identifiers

Do not use real customer or production data.

Ask AI to:

- Group errors
- Summarize the timeline
- Rank hypotheses
- Identify missing evidence

Manually verify every claim against the synthetic log.

Capture:

02_log_analyzer.png

## Lab 3 - Build AI RCA Assistant Prototype

Create a synthetic incident involving:

- Nginx unavailable
- Service status failure
- Configuration change
- Recovery action
- Health validation

Prepare:

- Timeline
- Logs
- Metrics
- Recent Git changes
- Recovery evidence

Generate a draft RCA.

Verify:

- No invented timestamps
- No invented impact
- Cause is supported by evidence
- Mitigation and prevention are separate

Capture:

03_rca_assistant.png

## Lab 4 - Build Kubernetes Troubleshooter Prototype

Create a safe lab failure.

Suggested scenario:

- Service selector does not match Pod labels

Collect:

kubectl get pods -n <namespace> --show-labels

kubectl describe service <service-name> -n <namespace>

kubectl get endpoints <service-name> -n <namespace>

kubectl get events -n <namespace>

Ask AI for:

- Observed state
- Hypotheses
- Validation commands

Correct the selector manually.

Validate the endpoint returns.

Capture:

04_kubernetes_troubleshooter.png

## Lab 5 - Build Infrastructure Reviewer Prototype

Use a safe Terraform lab plan.

Ask AI to review:

- Creation
- Update
- Replacement
- Destruction
- Security
- Cost
- Reliability

Compare AI findings with your own plan review.

Do not apply based only on the AI recommendation.

Capture:

05_infrastructure_reviewer.png

## Lab 6 - Build CI/CD Failure Analyzer Prototype

Create a synthetic Jenkins failure.

Suggested scenario:

- Invalid Docker image tag
- Missing build artifact
- Incorrect deployment namespace

Collect:

- Stage results
- Relevant console lines
- Commit identifier
- Artifact version
- Target status

Ask AI to identify:

- First meaningful error
- Secondary failures
- Missing evidence
- Safe validation

Capture:

06_cicd_analyzer.png

## Lab 7 - Build Cloud Cost Advisor Prototype

Use synthetic or non-sensitive inventory data.

Include:

- Resource name
- Resource type
- Environment
- Required uptime
- Basic utilization
- Owner status

Ask AI to identify candidates for review.

Manually confirm:

- Resource ownership
- Dependencies
- Retention
- Availability impact

Do not delete resources during this lab.

Capture:

07_cost_advisor.png

## Lab 8 - Build Runbook Generator Prototype

Choose a lab service.

Provide verified procedures for:

- Service status
- Logs
- Port validation
- Restart
- Health check
- Rollback
- Escalation

Generate the runbook.

Execute the read-only steps in the lab.

Mark all production-changing steps as approval required.

Capture:

08_runbook_generator.png

## Lab 9 - Test Hallucination Resistance

Remove one required evidence item from a synthetic incident.

Ask AI for an analysis.

Verify whether the response:

- Acknowledges missing evidence
- Avoids inventing values
- Avoids confirming a cause
- Requests safe validation

Capture:

09_hallucination_test.png

## Lab 10 - Test Secret Sanitization

Use synthetic placeholders.

Before AI input, confirm that data contains no:

- Access key
- Password
- Token
- Private key
- Customer identifier

Document the sanitization checklist.

Capture:

10_sanitization.png

## Lab 11 - Define Approval Boundaries

Create a list of:

- Read-only actions
- Draft-only actions
- Non-production changes
- Production changes
- Destructive operations

Require human approval for all production and destructive actions.

Capture:

11_approval_boundaries.png

## Lab 12 - Prepare GitHub Portfolio Evidence

Each project must contain:

- README.md
- architecture.md
- prompts.md
- sample_input
- sample_output
- validation.md
- security.md
- limitations.md
- screenshots

Capture:

12_github_portfolio.png
