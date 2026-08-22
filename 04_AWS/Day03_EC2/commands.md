# Day 03 - EC2 Commands

## Verify Identity

aws sts get-caller-identity

Screenshot:

01_identity.png

## List Instances

aws ec2 describe-instances

Screenshot:

02_instances.png

## List Instance Types

aws ec2 describe-instance-types

Screenshot:

03_instance_types.png

## List Security Groups

aws ec2 describe-security-groups

Screenshot:

04_security_groups.png

## Create Key Pair

aws ec2 create-key-pair
 --key-name devops-practice

Screenshot:

05_keypair.png

## Describe AMIs

aws ec2 describe-images

Screenshot:

06_amis.png

## Check Instance Status

aws ec2 describe-instance-status

Screenshot:

07_instance_status.png

## Start Instance

aws ec2 start-instances
 --instance-ids INSTANCE_ID

Screenshot:

08_start_instance.png

## Stop Instance

aws ec2 stop-instances
 --instance-ids INSTANCE_ID

Screenshot:

09_stop_instance.png

## Terminate Instance

aws ec2 terminate-instances
 --instance-ids INSTANCE_ID

Screenshot:

10_terminate_instance.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
