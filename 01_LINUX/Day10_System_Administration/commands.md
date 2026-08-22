# Day 10 Commands

## System Information

hostnamectl

Purpose:

Display hostname information.

Screenshot:

01_hostnamectl.png

uname -a

Purpose:

Display kernel information.

Screenshot:

02_uname_a.png

uptime

Purpose:

Display system uptime and load average.

Screenshot:

03_uptime.png

timedatectl

Purpose:

Display system date and time configuration.

Screenshot:

04_timedatectl.png

## Memory Monitoring

free -h

Purpose:

Display memory usage.

Screenshot:

05_free_h.png

vmstat

Purpose:

Display memory and system statistics.

Screenshot:

06_vmstat.png

## CPU Monitoring

top

Purpose:

Live CPU monitoring.

Screenshot:

07_top.png

htop

Purpose:

Interactive process monitoring.

Screenshot:

08_htop.png

## Disk Monitoring

df -h

Purpose:

Display disk usage.

Screenshot:

09_df_h.png

du -sh *

Purpose:

Display directory sizes.

Screenshot:

10_du_sh.png

## Service Management

systemctl status ssh

Purpose:

Check SSH service status.

Screenshot:

11_systemctl_status.png

systemctl restart ssh

Purpose:

Restart SSH service.

Screenshot:

12_systemctl_restart.png

## Log Analysis

journalctl -xe

Purpose:

View system logs.

Screenshot:

13_journalctl_xe.png

journalctl -u ssh

Purpose:

SSH service logs.

Screenshot:

14_journalctl_ssh.png

## Environment Variables

env

Purpose:

Display environment variables.

Screenshot:

15_env_output.png

## Cron Jobs

crontab -l

Purpose:

Display scheduled tasks.

Screenshot:

16_crontab_l.png
