# Day 04 - Users And Groups Concepts

## What Is A User?

A User is an account that can log into a Linux system.

Every activity in Linux is performed by a user.

Examples:

- ubuntu

- root

- teja

## Types Of Users

Root User

Superuser account.

Characteristics:

- Full control over system

- User ID = 0

- Can access all files

System Users

Used by services and applications.

Examples:

- mysql

- nginx

- daemon

Regular Users

Normal login users.

Examples:

- ubuntu

- teja

## What Is A Group?

A Group is a collection of users.

Purpose:

- Simplify permission management

- Provide shared access

## Why Groups Are Important?

Instead of assigning permissions to each user individually:

Users

↓

Group

↓

Permissions

This makes administration easier.

## User And Group Relationship

One user:

- Can belong to multiple groups

One group:

- Can contain multiple users

## Important Files

/etc/passwd

Stores user account information.

/etc/shadow

Stores encrypted passwords.

/etc/group

Stores group information.

## What Is Sudo?

sudo = Super User Do

Allows regular users to execute commands with elevated privileges.

Example:

sudo apt update

## Real-World Example

DevOps Engineers often:

- Create deployment users

- Add users to Docker group

- Manage Jenkins users

- Grant sudo access

User and group management is a daily Linux administration task.
