# Day 05 - Linux Permissions Concepts

## What Are Permissions?

Permissions determine:

- Who can access a file

- What actions can be performed

- Whether users can read, write, or execute

Linux uses permissions for security.

## Ownership Structure

Each file has:

- User (Owner)

- Group

- Others

Example:

-rw-r--r--

Owner = rw-

Group = r--

Others = r--

## Permission Types

r = Read

w = Write

x = Execute

Numeric Values

r = 4

w = 2

x = 1

Examples:

7 = rwx

6 = rw-

5 = r-x

4 = r--

0 = ---

## Numeric Permission Examples

777 = rwxrwxrwx

755 = rwxr-xr-x

744 = rwxr--r--

700 = rwx------

644 = rw-r--r--

600 = rw-------

## Special Permissions

SUID

Runs file with owner's privileges.

Example:

passwd command

SGID

Runs file with group's privileges.

Sticky Bit

Only file owner can delete the file.

Common location:

/tmp

## Real World DevOps Example

Jenkins cannot deploy files.

Reason:

Deployment directory owned by root.

Solution:

Update ownership:

chown

or

adjust permissions.

This is one of the most common production issues.
