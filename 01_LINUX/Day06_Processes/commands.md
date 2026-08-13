# Day 06 - Linux Process Commands

## Command 1 - ps

Purpose:

Display processes associated with the current terminal.

Syntax:

ps

Practice:

ps

Screenshot:

01_ps_output.png

## Command 2 - ps -ef

Purpose:

Display a full-format list of processes.

Syntax:

ps -ef

Important columns:

- UID = Process owner

- PID = Process ID

- PPID = Parent Process ID

- CMD = Command

Practice:

ps -ef

Screenshot:

02_ps_ef_output.png

## Command 3 - ps aux

Purpose:

Display processes with CPU and memory information.

Syntax:

ps aux

Important columns:

- USER

- PID

- %CPU

- %MEM

- VSZ

- RSS

- STAT

- COMMAND

Practice:

ps aux

Screenshot:

03_ps_aux_output.png

## Command 4 - top

Purpose:

Monitor processes and system resources interactively.

Syntax:

top

Useful keys:

- q = Quit

- P = Sort by CPU

- M = Sort by memory

- k = Send signal to a PID

- 1 = Display individual CPU information

Practice:

top

Screenshot:

04_top_output.png

## Command 5 - pgrep

Purpose:

Find process IDs matching a process name.

Syntax:

pgrep process_name

Example:

pgrep sshd

Detailed output:

pgrep -a sshd

Screenshot:

05_pgrep_output.png

## Command 6 - pidof

Purpose:

Find the PID of a running program.

Syntax:

pidof program_name

Example:

pidof sshd

## Command 7 - jobs

Purpose:

Display jobs started from the current shell.

Syntax:

jobs

Practice:

sleep 300 &

jobs

Screenshot:

06_jobs_output.png

## Command 8 - bg

Purpose:

Continue a stopped job in the background.

Practice:

sleep 300

Press Ctrl+Z.

Run:

bg

Verify:

jobs

Screenshot:

07_bg_output.png

## Command 9 - fg

Purpose:

Bring a background job to the foreground.

Syntax:

fg

Specific job:

fg %1

Screenshot:

08_fg_output.png

## Command 10 - kill

Purpose:

Send a signal to a process.

Default behavior sends SIGTERM.

Syntax:

kill PID

Practice:

sleep 500 &

jobs -l

kill PID

Verify:

ps -p PID

Screenshot:

09_kill_sigterm_output.png

## Command 11 - kill -9

Purpose:

Send SIGKILL and force immediate termination.

Syntax:

kill -9 PID

Use only when graceful termination fails.

Screenshot:

10_kill9_output.png

Production caution:

SIGKILL does not allow application cleanup, transaction completion, temporary-file removal, or graceful shutdown.

## Command 12 - kill -l

Purpose:

Display available Linux signals.

Syntax:

kill -l

Screenshot:

11_signal_list.png

## Command 13 - nice

Purpose:

Start a process with a specified nice value.

Syntax:

nice -n NICE_VALUE command

Example:

nice -n 10 sleep 500 &

Verify:

ps -o pid,ni,cmd -C sleep

Screenshot:

12_nice_output.png

## Command 14 - renice

Purpose:

Change the priority of a running process.

Syntax:

renice NICE_VALUE -p PID

Example:

renice 15 -p PID

Verify:

ps -o pid,ni,cmd -p PID

Screenshot:

13_renice_output.png

## Command 15 - nohup

Purpose:

Run a process that can continue after terminal disconnection.

Syntax:

nohup command &

Example:

nohup sleep 500 &

Verify:

jobs -l

ls -l nohup.out

Screenshot:

14_nohup_output.png

## Command 16 - Process CPU Ranking

Purpose:

Display processes consuming the highest CPU.

Command:

ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-%cpu | head

Screenshot:

15_high_cpu_processes.png

## Command 17 - Process Memory Ranking

Purpose:

Display processes consuming the highest memory.

Command:

ps aux --sort=-%mem | head

Screenshot:

16_high_memory_processes.png

## Command 18 - Process Tree

Purpose:

Display parent-child process relationships.

Command:

ps -ef --forest

Alternative:

pstree -p

Screenshot:

17_process_tree.png

## Command 19 - Find Zombie Processes

Command:

ps -eo pid,ppid,state,cmd | awk '$3 == "Z"'

Use this only for investigation.

A zombie normally requires action on the parent process, not on the zombie PID itself.

## Command 20 - Check One PID

Syntax:

ps -p PID -o pid,ppid,user,state,ni,%cpu,%mem,etime,cmd

Purpose:

Display detailed information for one process.

## Production Investigation Sequence

Confirm the symptom

Check system load

Identify the consuming process

Inspect PID and PPID

Review service and application logs

Check recent deployments or configuration changes

Collect diagnostic evidence

Attempt graceful termination if required

Validate service recovery

Document root cause and prevention
