# Day 06 - Troubleshooting

## Issue 1

Galaxy Role Installation Failed

Cause:

Internet connectivity issue.

Solution:

Verify internet access.

## Issue 2

Collection Not Found

Cause:

Incorrect namespace.

Solution:

Verify collection name.

Example:

amazon.aws

community.docker

## Issue 3

Module Not Recognized

Error:

module not found

Cause:

Collection not installed.

Solution:

Install required collection.

## Issue 4

Version Conflict

Cause:

Multiple collection versions.

Solution:

Pin version explicitly.

## Issue 5

Requirements Installation Failure

Cause:

Invalid requirements.yml

Solution:

Validate YAML formatting.

## Production Scenario 1

AWS Playbook Suddenly Stops Working

Root Cause:

Collection version upgraded automatically.

Solution:

Pin collection version.

## Production Scenario 2

Pipeline Works Locally But Fails In Jenkins

Root Cause:

Missing collection dependency.

Solution:

Install collections within CI/CD pipeline.

## Production Scenario 3

Security Team Rejects Public Role

Root Cause:

Unverified external code.

Solution:

Perform:

- Security review
- Compliance validation
- Vulnerability scanning

## Production Scenario 4

Collection Upgrade Breaks Production

Root Cause:

API changes.

Solution:

Maintain testing environments before upgrades.

## Production Scenario 5

Multiple Teams Use Different Collection Versions

Solution:

Implement centralized dependency management using requirements.yml and version locking.
