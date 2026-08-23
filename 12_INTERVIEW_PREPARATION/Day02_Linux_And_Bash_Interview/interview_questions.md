# Interview Questions

## Beginner Questions

### What Is Linux?

Linux is an open-source operating system kernel.

### What Is Kernel?

Kernel acts as bridge between hardware and software.

### Difference Between Hard Link And Soft Link?

Hard Link:

- Same inode

Soft Link:

- Different inode
- Pointer to original file

### Difference Between Process And Thread?

Process:

- Independent execution unit

Thread:

- Lightweight execution path within process

### What Is Swap?

Disk space used as virtual memory.

## Intermediate Questions

### What Happens During Linux Boot?

BIOS

↓

GRUB

↓

Kernel

↓

systemd

↓

Services

↓

Login

### Difference Between Zombie And Orphan Process?

Zombie:

Completed but not cleaned by parent.

Orphan:

Parent terminated before child.

### What Is Load Average?

System load over:

- 1 minute
- 5 minutes
- 15 minutes

### Difference Between rsync And cp?

rsync copies only changed data.

cp copies complete files.

## Advanced Questions (5+ Years)

### Linux Server Is Slow. Where Do You Start?

Step 1:

Check load.

uptime

Step 2:

Check CPU.

top

Step 3:

Check memory.

free -h

Step 4:

Check disk.

df -h

Step 5:

Check IO.

iostat

Step 6:

Check logs.

journalctl -xe

### Production Scenario

CPU Suddenly Reaches 100%.

How Would You Investigate?

Answer:

- top
- ps
- pidstat
- logs
- recent deployments
- failing services

### Production Scenario

Disk Becomes 100% Full.

Investigation:

- df -h
- du -sh
- log directories
- archive files
- cleanup

### Production Scenario

Service Is Down.

Checks:

- systemctl status
- logs
- ports
- configuration
- permissions

## Bash Questions

### Difference Between $@ And $*?

$@

Passes arguments separately.

$*

Passes as single string.

### What Is Exit Code?

Command result indicator.

0 means success.

### Difference Between Break And Continue?

break

Stops loop.

continue

Skips current iteration.

### Explain Function In Bash

Reusable block of code.

### How Do You Debug Bash Scripts?

bash -x script.sh

## Advanced Bash Questions

### How Do You Design A Production Script?

- Input Validation
- Error Handling
- Logging
- Exit Codes
- Modularity
- Security

### What Is Defensive Scripting?

Writing scripts that handle failures gracefully.
