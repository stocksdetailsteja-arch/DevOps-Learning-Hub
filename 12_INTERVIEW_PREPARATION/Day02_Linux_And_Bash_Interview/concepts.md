# Linux Concepts

## Linux Architecture

Applications

↓

Shell

↓

Kernel

↓

Hardware

## Kernel Responsibilities

- Process Management
- Memory Management
- Device Management
- Filesystem Management
- Networking

## Linux Boot Process

BIOS / UEFI

↓

GRUB

↓

Kernel

↓

init/systemd

↓

Services

↓

User Login

## File System Structure

/

├── bin
├── boot
├── dev
├── etc
├── home
├── lib
├── media
├── mnt
├── opt
├── proc
├── root
├── run
├── sbin
├── tmp
├── usr
└── var

## Process States

- Running
- Sleeping
- Stopped
- Zombie

## Memory Types

- RAM
- Cache
- Buffer
- Swap

## Linux Permissions

r = Read

w = Write

x = Execute

Example:

-rwxr-xr--

## User Types

- Root User
- System User
- Normal User

## Bash Concepts

### Variables

Store values.

### Loops

Execute repetitive tasks.

### Functions

Reusable code blocks.

### Exit Codes

0 = Success

Non-Zero = Failure

### Automation

Bash is widely used for:

- Monitoring
- Backup
- Deployment
- Health Checks

## Production Responsibilities

A DevOps Engineer should understand:

- CPU Usage
- Memory Usage
- Disk Usage
- Process Management
- Log Analysis
- Service Failures
