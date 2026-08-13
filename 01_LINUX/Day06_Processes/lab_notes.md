# Day 06 - Process Lab Notes

## Lab Objective

Practice Linux process monitoring, job control, process termination, priority management, and production investigation commands.

## Practice Directory

PRACTISE_SESSION/Day06_Processes_Lab

## Commands Executed

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

## Observations

- Every process has a unique PID.

- Child processes contain a PPID.

- Background jobs do not block the shell.

- SIGTERM allows graceful application shutdown.

- SIGKILL immediately terminates a process.

- Nice values affect scheduling priority.

- Nohup supports execution after terminal disconnection.

## Results

Successfully:

- Monitored Linux processes

- Started foreground and background processes

- Controlled shell jobs

- Terminated processes safely

- Changed process priorities

- Ran a process using nohup

- Identified CPU and memory consumers

## Lessons Learned

- Always verify the PID before sending a signal.

- Prefer SIGTERM before SIGKILL.

- Collect logs and diagnostics before restarting production applications.

- A process restart may restore service but does not automatically explain the root cause.

- Process monitoring must be combined with application and system logs.

## Screenshot References

Screenshots are stored in:

Day06_Processes_Lab_Screenshots/
