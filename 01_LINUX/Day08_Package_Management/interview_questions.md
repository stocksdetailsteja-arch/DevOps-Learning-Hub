# Day 08 Interview Questions

## Basic

### Q1 What is a package?

A package is a compressed software bundle containing application files and metadata.

### Q2 What is apt?

Advanced Package Tool used in Debian and Ubuntu systems.

## Intermediate

### Q1 Difference between apt and dpkg?

apt:

- Handles dependencies

- Downloads from repositories

dpkg:

- Installs local packages

- Does not resolve dependencies automatically

### Q2 Difference between apt remove and apt purge?

remove:

Removes application files.

purge:

Removes application files and configuration files.

## Advanced (5+ Years)

### Q1 A Jenkins installation fails because of dependency issues. How do you troubleshoot?

Answer:

Check repository availability.

Run:

apt update

Inspect dependency errors.

Verify package versions.

Validate network connectivity to repositories.

Fix broken packages.

Reattempt installation.

### Q2 Production server patch failed. What is your investigation approach?

Answer:

- Review package logs.

- Review repository connectivity.

- Check disk space.

- Check package lock files.

- Verify conflicting versions.

- Validate rollback plan.

### Q3 How do you install a specific package version?

Answer:

apt-cache policy package_name

sudo apt install package_name=version

### Q4 Why should package upgrades be tested before production?

Answer:

Because new versions may introduce:

- Breaking changes

- Dependency conflicts

- Service failures

- Application incompatibility
