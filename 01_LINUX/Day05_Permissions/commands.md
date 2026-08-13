# Day 05 - Linux Permissions Commands

## Lab Setup

Create a practice environment first:

mkdir Day05_Lab

cd Day05_Lab

touch file1.txt

touch file2.txt

mkdir project

ls -l

Take Screenshot:

01_initial_lab_setup.png

## Command 1 - ls -l

Purpose:

Display file ownership and permissions.

Syntax:

ls -l

Example:

ls -l

Sample Output:

-rw-r--r-- 1 ubuntu ubuntu 0 Aug 13 file1.txt

Permission Breakdown:

rw- = Owner

r-- = Group

r-- = Others

Take Screenshot:

02_ls_l_output.png

DevOps Usage:

Used frequently while troubleshooting deployment permission issues.

## Command 2 - chmod

Purpose:

Change permissions.

Syntax:

chmod permissions file

Example:

chmod 755 file1.txt

Verify:

ls -l file1.txt

Take Screenshot:

03_chmod_755_output.png

## Command 3 - chmod Symbolic Mode

Example:

chmod u+x file1.txt

Verify:

ls -l file1.txt

Take Screenshot:

04_symbolic_permission_output.png

Explanation:

u = User

g = Group

o = Others

a = All

= Add Permission
= Remove Permission

## Command 4 - chmod 777

Example:

chmod 777 file1.txt

Verify:

ls -l file1.txt

Take Screenshot:

05_chmod_777_output.png

Important:

Never use 777 in production unless absolutely necessary.

Security Risk:

Anyone can read, write, and execute.

## Command 5 - chmod 644

Example:

chmod 644 file1.txt

Verify:

ls -l file1.txt

Take Screenshot:

06_chmod_644_output.png

Production Usage:

Most configuration files use 644.

## Command 6 - chmod 600

Example:

chmod 600 file1.txt

Verify:

ls -l file1.txt

Take Screenshot:

07_chmod_600_output.png

Production Usage:

SSH private keys.

Sensitive files.

## Command 7 - chown

Purpose:

Change owner.

Example:

sudo chown ubuntu file1.txt

Verify:

ls -l

Take Screenshot:

08_chown_output.png

DevOps Usage:

Often required after deployments.

## Command 8 - chgrp

Purpose:

Change group ownership.

Example:

sudo chgrp ubuntu file1.txt

Verify:

ls -l

Take Screenshot:

09_chgrp_output.png

## Command 9 - stat

Purpose:

Display detailed file information.

Example:

stat file1.txt

Take Screenshot:

10_stat_output.png

Useful Information:

Owner
Group
Permissions
Access Time
Modify Time

## Command 10 - Sticky Bit

Create Shared Directory

mkdir shared

Apply Sticky Bit

chmod +t shared

Verify

ls -ld shared

Expected:

drwxrwxrwt

Take Screenshot:

11_sticky_bit_output.png

Production Usage:

/tmp directory

## Command 11 - SGID

chmod g+s project

Verify

ls -ld project

Take Screenshot:

12_sgid_output.png

Production Usage:

Shared project directories

## Command 12 - SUID

Find Existing SUID Files

find /usr/bin -perm -4000 2>/dev/null

Take Screenshot:

13_suid_search_output.png

Production Usage:

passwd command
