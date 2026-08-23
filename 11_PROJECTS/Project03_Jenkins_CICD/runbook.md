# Jenkins Operations Runbook

## Daily Checks

- Jenkins Service
- Build Queue
- Agent Status
- Failed Builds
- Disk Usage

## Incident Response

1. Review Build Failure
2. Review Console Output
3. Check Agent Health
4. Verify Credentials
5. Verify Deployment
6. Validate Fix
7. Document Findings

## Important Locations

Jenkins Home:

/var/lib/jenkins

Logs:

journalctl -u jenkins

Workspace:

$WORKSPACE
