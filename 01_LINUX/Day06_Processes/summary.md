# Day 06 - Process Summary

## Topics Covered

- Process concepts

- PID and PPID

- Parent and child processes

- Foreground and background processes

- Daemons

- Process states

- Linux signals

- Nice and renice

- Zombie and orphan processes

- Process monitoring

## Commands Learned

- ps

- ps -ef

- ps aux

- top

- pgrep

- pidof

- jobs

- bg

- fg

- kill

- kill -9

- nice

- renice

- nohup

## Important Signals

- SIGTERM = Graceful termination request

- SIGKILL = Forced immediate termination

- SIGINT = Terminal interrupt

- SIGSTOP = Pause process

- SIGCONT = Continue process

## Process States

- R = Running

- S = Sleeping

- D = Uninterruptible sleep

- T = Stopped

- Z = Zombie

## Production Notes

- Confirm the PID before termination.

- Prefer SIGTERM before SIGKILL.

- Collect evidence before restarting production services.

- Investigate the parent process when zombies accumulate.

- Check service managers when terminated processes respawn.

- Process health is not the same as application health.

## Quick Revision

PID = Process ID

PPID = Parent Process ID

Daemon = Long-running background service

Zombie = Completed child not reaped by parent

Orphan = Child whose parent exited

nice = Start with priority adjustment

renice = Modify existing process priority

nohup = Continue after terminal disconnect
