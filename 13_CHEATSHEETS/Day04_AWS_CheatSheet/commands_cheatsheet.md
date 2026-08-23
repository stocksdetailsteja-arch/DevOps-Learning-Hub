# AWS CLI Cheat Sheet

## Configure CLI

aws configure

## Verify Identity

aws sts get-caller-identity

## EC2

aws ec2 describe-instances

aws ec2 start-instances --instance-ids <id>

aws ec2 stop-instances --instance-ids <id>

## Security Groups

aws ec2 describe-security-groups

## VPC

aws ec2 describe-vpcs

## Subnets

aws ec2 describe-subnets

## Route Tables

aws ec2 describe-route-tables

## EBS

aws ec2 describe-volumes

## S3

aws s3 ls

aws s3 cp file.txt s3://bucket-name

## Load Balancer

aws elbv2 describe-load-balancers

## Auto Scaling

aws autoscaling describe-auto-scaling-groups

## RDS

aws rds describe-db-instances

## CloudWatch

aws cloudwatch list-metrics

aws cloudwatch describe-alarms

## CloudTrail

aws cloudtrail describe-trails
