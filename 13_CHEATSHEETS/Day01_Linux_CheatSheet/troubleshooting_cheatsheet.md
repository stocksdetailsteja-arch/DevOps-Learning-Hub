# Linux Troubleshooting Cheatsheet

## Server Slow

top

free -h

df -h

uptime

journalctl -xe

## CPU 100%

top

ps -ef

pidstat

## Memory Leak

free -h

top

pmap

## Disk Full

df -h

du -sh *

find / -size +1G

## Website Down

systemctl status

ss -tunlp

journalctl -xe

curl localhost

## SSH Not Working

ss -tunlp | grep 22

systemctl status ssh
