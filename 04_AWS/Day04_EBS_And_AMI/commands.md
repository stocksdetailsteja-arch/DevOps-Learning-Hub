# Day 04 - EBS And AMI Commands

## Describe Volumes

aws ec2 describe-volumes

Screenshot:

01_describe_volumes.png

## Create Volume

aws ec2 create-volume
 --availability-zone ap-south-1a
 --size 10

Screenshot:

02_create_volume.png

## Attach Volume

aws ec2 attach-volume
 --volume-id VOL_ID
 --instance-id INSTANCE_ID
 --device /dev/sdf

Screenshot:

03_attach_volume.png

## Describe Volume Status

aws ec2 describe-volume-status

Screenshot:

04_volume_status.png

## Create Snapshot

aws ec2 create-snapshot
 --volume-id VOL_ID

Screenshot:

05_create_snapshot.png

## Describe Snapshots

aws ec2 describe-snapshots
 --owner-ids self

Screenshot:

06_describe_snapshots.png

## Create Image (AMI)

aws ec2 create-image
 --instance-id INSTANCE_ID
 --name "jenkins-server-v1"

Screenshot:

07_create_ami.png

## List AMIs

aws ec2 describe-images
 --owners self

Screenshot:

08_list_amis.png

## Copy AMI

aws ec2 copy-image

Screenshot:

09_copy_ami.png

## Delete Snapshot

aws ec2 delete-snapshot
 --snapshot-id SNAPSHOT_ID

Screenshot:

10_delete_snapshot.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
