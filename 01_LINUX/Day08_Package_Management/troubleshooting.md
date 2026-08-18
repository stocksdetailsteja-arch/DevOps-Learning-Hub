# Day 08 Troubleshooting

## Scenario 1

Package Installation Failed

Error:

Unable to locate package

Investigation:

apt update

Root Cause:

Repository metadata outdated.

Resolution:

Refresh package cache.

## Scenario 2

Could Not Get Lock

Error:

Could not get lock /var/lib/dpkg/lock

Root Cause:

Another package process running.

Resolution:

Identify running apt process.

Wait for completion.

## Scenario 3

Broken Packages

Error:

Unmet Dependencies

Resolution:

sudo apt --fix-broken install

## Scenario 4

Repository Not Reachable

Cause:

DNS or Network Issue

Investigation:

ping

nslookup

curl

Resolution:

Fix network connectivity.

## Scenario 5 (Production)

Patch Deployment Fails Across Multiple Servers

Investigation:

- Repository Availability

- Network Connectivity

- Package Version Compatibility

- Disk Space

- Package Locks

Resolution:

Fix root cause and retry deployment.

## Scenario 6 (5+ Years)

Application Fails After OS Patch

Investigation:

- Review package changes

- Compare versions

- Analyze logs

- Verify dependencies

- Roll back if necessary

Resolution:

Restore working package version.
