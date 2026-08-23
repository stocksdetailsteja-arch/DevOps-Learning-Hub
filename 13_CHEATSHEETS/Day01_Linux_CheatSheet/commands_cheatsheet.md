# Linux Commands Cheat Sheet

## System Information

uname -a

hostnamectl

uptime

## CPU

top

htop

mpstat

lscpu

## Memory

free -h

vmstat

cat /proc/meminfo

## Disk

df -h

du -sh *

lsblk

## Process

ps -ef

pstree

pgrep

pidof

## Services

systemctl status nginx

systemctl restart nginx

## Logs

journalctl -xe

tail -f /var/log/syslog

## Network

ip addr

ip route

ss -tunlp

netstat -tunlp

dig google.com

nslookup google.com

## Users

useradd

usermod

passwd

userdel
