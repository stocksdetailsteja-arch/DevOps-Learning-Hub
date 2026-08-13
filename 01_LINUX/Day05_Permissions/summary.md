# Day 05 Summary

## Topics Covered

- File Ownership

- User Permissions

- Group Permissions

- Other Permissions

- chmod

- chown

- chgrp

- Numeric Permissions

- Symbolic Permissions

- SUID

- SGID

- Sticky Bit

## Permission Basics

r = Read = 4

w = Write = 2

x = Execute = 1

## Common Permission Values

755 = rwxr-xr-x

644 = rw-r--r--

700 = rwx------

777 = rwxrwxrwx

600 = rw-------

## Commands Learned

- ls -l

- chmod

- chown

- chgrp

- stat

## Special Permissions

SUID

Runs command with owner's privileges.

Example:

passwd

SGID

Runs command with group's privileges.

Sticky Bit

Prevents users from deleting files owned by other users.

Example:

/tmp

## Production Notes

Avoid:

777

Follow:

Principle of Least Privilege

Grant only required permissions.

## Quick Revision

chmod → Change permissions

chown → Change owner

chgrp → Change group

SUID → Run as owner

SGID → Run as group

Sticky Bit → Restrict deletion
