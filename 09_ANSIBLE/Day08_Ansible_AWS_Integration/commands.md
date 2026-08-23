# Day 08 - Ansible AWS Integration Commands

## Install AWS Collection

ansible-galaxy collection install amazon.aws

## Verify Collection

ansible-galaxy collection list

## Install AWS SDK

pip install boto3

pip install botocore

## Configure AWS CLI

aws configure

## Verify Identity

aws sts get-caller-identity

## Verify Region

aws configure list

## List EC2 Instances

aws ec2 describe-instances

## List S3 Buckets

aws s3 ls

## Execute Playbook

ansible-playbook ec2.yml

## Syntax Check

ansible-playbook --syntax-check ec2.yml

## Dry Run

ansible-playbook --check ec2.yml

## View Collection Documentation

ansible-doc amazon.aws.ec2_instance

## Debug Execution

ansible-playbook ec2.yml -vvv
