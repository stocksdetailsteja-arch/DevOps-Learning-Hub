# Day 04 - EBS And AMI Practice Session

## Lab Setup

Use existing EC2 instance from Day03.

## Lab 1

Verify Root Volume

Screenshot:

01_root_volume.png

## Lab 2

Create Additional Volume

10 GB gp3

Screenshot:

02_create_volume.png

## Lab 3

Attach Volume To EC2

Screenshot:

03_attach_volume.png

## Lab 4

Verify Inside Linux

lsblk

Screenshot:

04_lsblk_output.png

## Lab 5

Format Volume

sudo mkfs.ext4 /dev/xvdf

Screenshot:

05_format_volume.png

## Lab 6

Mount Volume

sudo mount /dev/xvdf /data

Screenshot:

06_mount_volume.png

## Lab 7

Create Files

echo "DevOps Practice" > /data/test.txt

Screenshot:

07_create_testfile.png

## Lab 8

Create Snapshot

Screenshot:

08_snapshot_creation.png

## Lab 9

Create AMI

Screenshot:

09_create_ami.png

## Lab 10

Launch Instance From AMI

Screenshot:

10_launch_from_ami.png

## Lab 11

Delete Test Resources

Verify Cleanup

Screenshot:

11_cleanup_validation.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
