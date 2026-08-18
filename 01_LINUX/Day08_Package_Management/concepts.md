# Day 08 - Package Management Concepts

## What Is A Package?

A package is a compressed bundle containing:

- Application Files

- Configuration Files

- Dependencies

- Installation Scripts

## What Is Package Management?

Package Management helps Linux:

- Install Software

- Upgrade Software

- Remove Software

- Resolve Dependencies

## Linux Package Managers

Ubuntu / Debian

- apt

- apt-get

- dpkg

RHEL Based

- yum

- dnf

## Repository

A repository is a centralized location from which software packages are downloaded.

Examples:

- Ubuntu Repository

- Docker Repository

- Kubernetes Repository

## Dependency Management

Applications often need supporting libraries.

Package managers automatically install required dependencies.

## Package Lifecycle

Repository

↓

Download

↓

Install

↓

Upgrade

↓

Remove

## Real World Example

To install Docker:

Package Repository

↓

docker package

↓

apt install docker-ce

## DevOps Use Cases

- Patching EC2 Servers

- Installing Docker

- Installing Jenkins

- Installing Monitoring Tools

- Security Updates
