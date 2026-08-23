# Day 07 - AWS CloudWatch Commands

## Verify AWS Identity

aws sts get-caller-identity

## List CloudWatch Metrics

aws cloudwatch list-metrics

## Get Metric Statistics

aws cloudwatch get-metric-statistics

## Create Alarm

aws cloudwatch put-metric-alarm

## Describe Alarms

aws cloudwatch describe-alarms

## Delete Alarm

aws cloudwatch delete-alarms

## List Log Groups

aws logs describe-log-groups

## List Log Streams

aws logs describe-log-streams

## View Log Events

aws logs get-log-events

## Install CloudWatch Agent

sudo apt install amazon-cloudwatch-agent -y

## Start CloudWatch Agent

sudo systemctl start amazon-cloudwatch-agent

## Check Agent Status

sudo systemctl status amazon-cloudwatch-agent

## Restart Agent

sudo systemctl restart amazon-cloudwatch-agent
