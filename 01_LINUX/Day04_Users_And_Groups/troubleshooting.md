# Day 04 Troubleshooting

## Problem

Permission denied

Cause:

User lacks required permissions.

Resolution:

Use sudo or update group membership.

## Problem

useradd: user already exists

Cause:

User account already exists.

Resolution:

Check existing users:

cat /etc/passwd
