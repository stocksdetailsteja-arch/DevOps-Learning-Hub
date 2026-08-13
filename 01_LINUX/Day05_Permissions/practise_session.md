## Practice Session

Task 1

Create:

touch app.log

Set permission:

640

Verify

Task 2

Create:

mkdir deployments

Set:

775

Verify

Task 3

Create:

touch secret.key

Set:

600

Verify

Task 4

Create:

mkdir shared_directory

Apply Sticky Bit

Verify

Take Screenshot:

14_practice_completion.png

## Real DevOps Scenario

A Jenkins deployment fails.

Error:

Permission denied

Investigation Steps:

whoami

id

ls -ld deployment_directory

ls -l deployment_file

Fix:

sudo chown jenkins deployment_file

or

sudo chmod 755 deployment_directory

Take Screenshot:

15_real_world_troubleshooting.png

## Key Commands Summary

ls -l → View permissions

chmod → Change permissions

chown → Change owner

chgrp → Change group

stat → Detailed file information

chmod +t → Sticky Bit

chmod g+s → SGID

find /usr/bin -perm -4000 → SUID files
