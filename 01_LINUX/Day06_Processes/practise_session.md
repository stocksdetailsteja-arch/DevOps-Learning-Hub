# Day 06 - Processes Practice Session

## Practice Location

Create the lab inside:

PRACTISE_SESSION/Day06_Processes_Lab

Commands:

mkdir -p PRACTISE_SESSION/Day06_Processes_Lab

cd PRACTISE_SESSION/Day06_Processes_Lab

Verify:

pwd

## Lab 1 - View Current Shell Processes

Run:

ps

Expected result:

Processes related to the current terminal are displayed.

Screenshot:

01_ps_output.png

## Lab 2 - View All Processes

Run:

ps -ef

Expected result:

A full list containing PID, PPID, user, and command is displayed.

Screenshot:

02_ps_ef_output.png

## Lab 3 - Monitor CPU And Memory

Run:

top

Actions:

Press P to sort by CPU

Press M to sort by memory

Press q to exit

Screenshot:

03_top_output.png

## Lab 4 - Start A Background Process

Run:

sleep 300 &

Verify:

jobs -l

Expected result:

The job number and PID are displayed.

Screenshot:

04_background_process.png

## Lab 5 - Stop And Continue A Job

Run:

sleep 500

Press Ctrl+Z.

Run:

jobs

Run:

bg

Verify:

jobs

Screenshot:

05_bg_job.png

## Lab 6 - Bring Job To Foreground

Run:

fg %1

Press Ctrl+C to terminate.

Screenshot:

06_fg_job.png

## Lab 7 - Graceful Termination

Run:

sleep 600 &

Record the PID using:

jobs -l

Run:

kill PID

Verify:

ps -p PID

Screenshot:

07_sigterm_validation.png

## Lab 8 - Forced Termination

Run:

sleep 600 &

Record the PID.

Run:

kill -9 PID

Verify:

ps -p PID

Screenshot:

08_sigkill_validation.png

## Lab 9 - Nice Value

Run:

nice -n 10 sleep 500 &

Verify:

ps -o pid,ni,cmd -C sleep

Screenshot:

09_nice_value.png

## Lab 10 - Renice A Process

Identify the PID.

Run:

renice 15 -p PID

Verify:

ps -o pid,ni,cmd -p PID

Screenshot:

10_renice_value.png

## Lab 11 - Nohup Process

Run:

nohup sleep 500 &

Verify:

jobs -l

ls -l nohup.out

Screenshot:

11_nohup_process.png

## Lab 12 - Resource Ranking

Run:

ps -eo pid,ppid,user,cmd,%cpu,%mem --sort=-%cpu | head

Run:

ps aux --sort=-%mem | head

Screenshots:

12_cpu_ranking.png

13_memory_ranking.png

## Lab Validation Checklist

- Foreground process tested

- Background process tested

- jobs command tested

- bg and fg tested

- SIGTERM tested

- SIGKILL tested

- Nice value tested

- Renice tested

- Nohup tested

- CPU ranking captured

- Memory ranking captured

## Cleanup

Find remaining sleep processes:

pgrep -a sleep

Terminate only the lab processes after verifying the PID:

kill PID

Verify:

pgrep -a sleep
