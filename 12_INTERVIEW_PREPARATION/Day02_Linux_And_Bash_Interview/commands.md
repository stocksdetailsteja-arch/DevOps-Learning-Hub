# Linux Commands

## System Information

uname -a

hostnamectl

uptime

## CPU Monitoring

top

htop

mpstat

lscpu

## Memory Monitoring

free -h

vmstat

cat /proc/meminfo

## Storage Monitoring

df -h

du -sh *

lsblk

blkid

## Process Management

ps -ef

top

pstree

pgrep nginx

pidof java

## Service Management

systemctl status nginx

systemctl start nginx

systemctl stop nginx

systemctl restart nginx

systemctl enable nginx

## Logs

journalctl -xe

tail -f /var/log/messages

tail -f /var/log/syslog

## Networking

ip addr

ip route

ss -tunlp

netstat -tunlp

ping google.com

traceroute google.com

nslookup google.com

dig google.com

## User Management

id

whoami

useradd testuser

passwd testuser

usermod

userdel

## Permissions

chmod 755 file.sh

chmod 600 secret.txt

chown ubuntu:ubuntu file.txt

## Bash Validation

bash script.sh

bash -n script.sh

bash -x script.sh

shellcheck script.sh

## Cron Jobs

crontab -e

crontab -l
