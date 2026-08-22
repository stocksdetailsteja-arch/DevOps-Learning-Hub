# Day 01 - AWS Introduction Lab Notes

## Lab Objective

Understand AWS cloud foundations, account context, Region selection, Availability Zones, shared responsibility, CLI identity, and cost-safety principles.

## Practice Directory

PRACTISE_SESSION/Day01_AWS_Introduction_Lab

## Activities Completed

- AWS Console navigation

- Identity verification

- Region verification

- Region exploration

- Availability Zone exploration

- AWS CLI verification

- Caller identity verification

- Shared responsibility exercise

- Multi-Availability-Zone architecture exercise

- Cost-safety checklist

## Commands Executed

- aws --version

- aws help

- aws configure list

- aws configure list-profiles

- aws configure get region

- aws sts get-caller-identity

- aws ec2 describe-regions

- aws ec2 describe-availability-zones

## Observations

- The AWS Console Region selector affects Regional service views.

- AWS CLI commands use an identity and a Region context.

- Regions and Availability Zones are different infrastructure concepts.

- A single-Availability-Zone design can remain vulnerable to an Availability Zone failure.

- Security responsibilities vary by AWS service.

- AWS CLI output may contain information that should be redacted before public upload.

- Cost planning should begin before resource creation.

## Results

Successfully:

- Navigated the AWS Management Console

- Verified CLI availability

- Verified the active AWS identity

- Verified the configured Region

- Reviewed Regions and Availability Zones

- Documented shared responsibilities

- Documented Day01 cost-safety rules

## Lessons Learned

- Verify identity before performing AWS operations.

- Verify Region before creating resources.

- Do not use root for daily activities.

- Never publish credentials or sensitive identifiers.

- Design high availability across failure boundaries.

- Understand customer responsibility before using a service.

- Document cleanup before creating a resource.

## Screenshot Location

Day01_AWS_Introduction_Lab_Screenshots/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
