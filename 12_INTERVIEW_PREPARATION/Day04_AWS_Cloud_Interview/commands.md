# AWS Commands

## Configure AWS CLI

aws configure

## Verify Identity

aws sts get-caller-identity

## List EC2 Instances

aws ec2 describe-instances

## Start Instance

aws ec2 start-instances --instance-ids <id>

## Stop Instance

aws ec2 stop-instances --instance-ids <id>

## List S3 Buckets

aws s3 ls

## Copy File To S3

aws s3 cp file.txt s3://bucket-name

## Check Security Groups

aws ec2 describe-security-groups

## Check VPCs

aws ec2 describe-vpcs

## Check Subnets

aws ec2 describe-subnets

## List Load Balancers

aws elbv2 describe-load-balancers

## List RDS

aws rds describe-db-instances

## CloudWatch Metrics

aws cloudwatch list-metrics

## CloudWatch Alarms

aws cloudwatch describe-alarms

## CloudTrail

aws cloudtrail describe-trails

## Systems Manager

aws ssm describe-instance-information
