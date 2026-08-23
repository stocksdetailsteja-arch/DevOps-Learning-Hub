# Project 05 - Rollback

## Rollback Triggers

Rollback may be required when:

- Health checks fail
- New Pods remain unavailable
- Application errors increase
- Service endpoints disappear
- Configuration change breaks startup
- New image produces critical defects
- Deployment exceeds the permitted rollout window

## Pre-Rollback Checks

Record:

- Current image
- Current Deployment revision
- Previous revision
- Current failure
- Current user impact
- Related configuration changes

## View Current Image

kubectl get deployment springboot-application \
  -n devops-portfolio \
  -o jsonpath='{.spec.template.spec.containers[0].image}'

## View Rollout History

kubectl rollout history \
  deployment/springboot-application \
  -n devops-portfolio

## Rollback Previous Revision

kubectl rollout undo \
  deployment/springboot-application \
  -n devops-portfolio

## Rollback Specific Revision

kubectl rollout undo \
  deployment/springboot-application \
  --to-revision=<revision-number> \
  -n devops-portfolio

## Monitor Rollback

kubectl rollout status \
  deployment/springboot-application \
  -n devops-portfolio \
  --timeout=180s

kubectl get pods \
  -n devops-portfolio \
  -w

## Post-Rollback Validation

Confirm:

- Expected image restored
- Pods become Ready
- Service endpoints exist
- Health endpoint succeeds
- Error rate returns to expected state
- Logs no longer show the deployment failure

## Configuration Rollback

If ConfigMap changes caused the issue:

- Restore the previous Git revision
- Reapply ConfigMap
- Restart or roll out Pods only when required
- Validate the application

If Secret references caused the issue:

- Restore the correct secret through the approved secret-management workflow
- Do not expose values in logs
- Validate new Pods securely

## Database Consideration

Application rollback may not be safe if the new release introduced incompatible database changes.

Before production rollback:

- Confirm schema compatibility
- Review migration status
- Confirm rollback script
- Protect current data
- Coordinate with the database owner

## Git Reconciliation

After emergency rollback:

- Update Git to represent the approved running state
- Open a reviewed corrective change
- Avoid leaving the cluster different from repository configuration

## Communication

Document:

- Rollback reason
- Start time
- Affected version
- Restored version
- Validation evidence
- Remaining risk
- Follow-up actions
