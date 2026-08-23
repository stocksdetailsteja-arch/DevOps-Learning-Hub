# Day 03 - AdHoc Commands Commands

## Ping All Hosts

Shell
1
ansible all -m ping -i inventory.ini
Show more lines

Screenshot:

01_ping_all.png

## Ping Specific Group

Shell
1
ansible web -m ping -i inventory.ini
Show more lines

Screenshot:

02_ping_group.png

## Execute Hostname Command

Shell
1
ansible all -m command -a "hostname"
Show more lines

Screenshot:

03_hostname.png

## Execute Date Command

Shell
1
ansible all -m command -a "date"
Show more lines

Screenshot:

04_date.png

## Execute Uptime Command

Shell
1
ansible all -m command -a "uptime"
Show more lines

Screenshot:

05_uptime.png

## Shell Module Example

Shell
1
ansible all -m shell -a "df -h"
Show more lines

Screenshot:

06_shell_df.png

## Copy File

Shell
1
ansible all -m copy -a "src=test.txt dest=/tmp/test.txt"
Show more lines

Screenshot:

07_copy_file.png

## Create Directory

Shell
1
ansible all -m file -a "path=/tmp/demo state=directory"
Show more lines

Screenshot:

08_create_directory.png

## Install Package

Shell
1
ansible all -m apt -a "name=nginx state=present" --become
Show more lines

Screenshot:

09_install_nginx.png

## Restart Service

Shell
1
ansible all -m service -a "name=nginx state=restarted" --become
Show more lines

Screenshot:

10_restart_service.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
