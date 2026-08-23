# AWS Infrastructure Commands

## Verify AWS Login

aws sts get-caller-identity

## List VPCs

aws ec2 describe-vpcs

## List Subnets

aws ec2 describe-subnets

## List EC2

aws ec2 describe-instances

## List Security Groups

aws ec2 describe-security-groups

## List Load Balancers

aws elbv2 describe-load-balancers

## List Target Groups

aws elbv2 describe-target-groups

## List RDS

aws rds describe-db-instances

## CloudWatch Metrics

aws cloudwatch list-metrics

## CloudWatch Alarms

aws cloudwatch describe-alarms

## S3 Buckets

aws s3 ls
