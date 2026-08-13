# Day 05 Interview Questions

## Basic

Q1. What are Linux permissions?

Answer:

Permissions control access to files and directories.

Q2. What do r, w, and x mean?

Answer:

Read, Write, Execute.

## Intermediate

Q1. Difference between 755 and 777?

Answer:

755

Owner has full access.

Others have read and execute.

777

Everyone has full access.

777 is unsafe in production.

Q2. Difference between chmod and chown?

Answer:

chmod changes permissions.

chown changes ownership.

## Advanced

Q1. A Jenkins deployment fails with "Permission Denied". How would you troubleshoot?

Answer:

Identify deployment user.

Check ownership.

ls -l

Check permissions.

Verify group membership.

Fix ownership or permissions.

Re-run deployment.

Q2. Why is 777 considered a security risk?

Answer:

Any user can modify, execute, and delete files.

It violates least-privilege security principles.

Q3. Explain SUID with a real example.

Answer:

passwd command runs with root privileges so users can change passwords without direct root access.

Q4. Explain Sticky Bit in production.

Answer:

Used in shared directories such as /tmp to prevent users from deleting each other's files.
