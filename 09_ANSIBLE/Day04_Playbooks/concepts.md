# Day 04 - Ansible Playbooks Concepts

## What Is A Playbook?

A Playbook is a YAML file that describes automation tasks.

Example:

- Install package
- Copy file
- Start service

All actions are written in a structured format.

## YAML Basics

YAML stands for:

YAML Ain't Markup Language

Important Rules:

- Use spaces only
- No tabs
- Maintain indentation
- Use key-value pairs

Example:

name: Install nginx

## Play

A play defines:

- Target hosts
- User
- Tasks

Example:

hosts: webservers

## Task

Task is a single action.

Examples:

- Install package
- Restart service
- Create directory

## Module

Modules perform actual work.

Examples:

- apt
- yum
- service
- copy
- file
- user

## Variables

Variables make playbooks reusable.

Examples:

- Package names
- User names
- Ports

## Handlers

Handlers run only when notified.

Example:

When nginx configuration changes

Then:

- Restart Nginx

## Tags

Tags allow executing selected tasks.

Example:

- install
- configure
- deploy

## Idempotency

Ansible follows idempotency.

Running a playbook again should not change anything if the desired state already exists.

This is one of the most important DevOps concepts.
