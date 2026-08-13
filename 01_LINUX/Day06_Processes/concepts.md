# Day 06 - Linux Process Concepts

## What Is A Process?

A process is an instance of a running program.

When a program is executed, Linux loads the program into memory and assigns resources such as:

- Process ID

- Memory

- CPU time

- Open files

- Environment variables

- User identity

Examples of processes include:

- Bash shell

- SSH session

- Java application

- Jenkins service

- Nginx server

- Docker daemon

## Program Versus Process

A program is a file stored on disk.

A process is a running instance of that program.

Example:

/usr/bin/bash is a program.

A running Bash session is a process.

Multiple processes can be created from the same program.

## What Is PID?

PID means Process ID.

Linux assigns a unique PID to each running process.

PID is used to:

- Identify a process

- Monitor a process

- Send signals to a process

- Change process priority

- Terminate a process

## What Is PPID?

PPID means Parent Process ID.

A child process stores the PID of the process that created it as the PPID.

Example:

A Bash shell starts a sleep command.

Bash is the parent process.

sleep is the child process.

## Parent And Child Processes

A parent process creates another process.

The created process is called a child process.

Process relationship:

Parent Process

↓

Child Process

A single parent can create multiple children.

## Foreground Process

A foreground process uses the current terminal.

The shell waits until the process finishes.

Example:

sleep 30

The terminal remains occupied until the process completes or is interrupted.

## Background Process

A background process runs without blocking the terminal.

The ampersand symbol starts a command in the background.

Example:

sleep 300 &

The shell immediately returns the command prompt.

## Daemon Process

A daemon is a long-running background process that usually provides a system or application service.

Examples:

- sshd

- systemd

- nginx

- cron

- dockerd

Daemon names often end with the letter d.

## Process States

Common Linux process states include:

- R = Running or runnable

- S = Interruptible sleep

- D = Uninterruptible sleep

- T = Stopped or traced

- Z = Zombie

- I = Idle kernel thread

A process in D state may be waiting for disk, network storage, or another kernel-level operation.

## Linux Signals

Signals are notifications sent to processes.

Common signals:

- SIGTERM = Request graceful termination

- SIGKILL = Force immediate termination

- SIGHUP = Terminal disconnect or configuration reload in some applications

- SIGINT = Interrupt from keyboard, normally Ctrl+C

- SIGSTOP = Pause process

- SIGCONT = Continue stopped process

SIGTERM is preferred before SIGKILL.

## Zombie Process

A zombie is a completed child process whose parent has not collected the exit status.

Characteristics:

- Process state shows Z

- Process has already completed

- Zombie cannot be killed normally

- Parent process must collect the exit status

Large numbers of zombies may indicate an application defect.

## Orphan Process

An orphan process is a child process whose parent exits while the child is still running.

The orphan is normally adopted by PID 1, such as systemd.

An orphan process is not automatically an error.

## Process Priority

Linux schedules CPU access using process priorities.

The nice value commonly ranges from:

- -20 = Higher scheduling priority

- 0 = Default priority

- 19 = Lower scheduling priority

A regular user can generally lower process priority by increasing the nice value.

Elevated privileges are normally required to increase priority by reducing the nice value.

## Process Lifecycle

A simplified lifecycle is:

Process is created

Process becomes runnable

Scheduler assigns CPU

Process runs

Process may wait for input or resources

Process resumes

Process exits

Parent collects exit status

## Connection To DevOps Tools

Jenkins

Jenkins creates build and deployment processes.

A pipeline may hang because a child process does not terminate.

Docker

A container runs using Linux processes.

If the primary container process exits, the container normally stops.

Kubernetes

Kubernetes starts and monitors container processes through the container runtime.

Java

A Java application runs as a JVM process.

CPU, memory, threads, heap, and garbage collection may require process-level investigation.

Monitoring

Monitoring tools examine process metrics to detect failures and performance bottlenecks.

## Production Best Practices

- Use SIGTERM before SIGKILL

- Confirm the correct PID before termination

- Collect evidence before restarting an application

- Review logs before and after process failure

- Use service managers such as systemd for managed applications

- Configure timeouts in pipelines and scripts

- Monitor CPU, memory, process count, and restart frequency

- Document the reason for production process termination
