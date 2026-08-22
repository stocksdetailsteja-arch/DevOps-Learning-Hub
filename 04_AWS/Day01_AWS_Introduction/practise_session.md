# Day 01 - AWS Introduction Practice Session

## Practice Approach

Use the AWS Management Console for infrastructure exploration.

Use the terminal for read-only AWS CLI verification.

Do not create chargeable infrastructure in Day01.

## Practice Directory

From the repository root:

mkdir -p PRACTISE_SESSION/Day01_AWS_Introduction_Lab

cd PRACTISE_SESSION/Day01_AWS_Introduction_Lab

Verify:

pwd

## Lab 1 - Record AWS Learning Safety Rules

Create:

aws_safety_notes.txt

Add:

- Do not use root for daily work

- Enable MFA

- Do not expose credentials

- Confirm Region before creating resources

- Review pricing before labs

- Delete unused resources

Screenshot:

01_aws_safety_notes.png

## Lab 2 - Explore The AWS Console

Sign in using an approved identity.

Identify:

- Account or organization context

- Signed-in identity

- Selected Region

- Services search

Do not expose account details in screenshots.

Screenshot:

02_console_home_redacted.png

## Lab 3 - Change Region Selection

Use the console Region selector.

Observe that Regional service views change according to the selected Region.

Return to the intended learning Region.

Screenshot:

03_region_selector_redacted.png

## Lab 4 - Explore Global Infrastructure

Review:

- Regions

- Availability Zones

- Region codes

- Availability Zone names

Record the selected learning Region in:

region_notes.txt

Screenshot:

04_region_notes.png

## Lab 5 - Verify AWS CLI

Run:

aws --version

Screenshot:

05_aws_cli_version.png

## Lab 6 - Verify AWS CLI Configuration

Run:

aws configure list

Redact sensitive details.

Screenshot:

06_cli_configuration_redacted.png

## Lab 7 - Verify CLI Identity

Run:

aws sts get-caller-identity

Redact:

- Account ID

- UserId

- ARN details where required

Screenshot:

07_identity_redacted.png

## Lab 8 - Verify Region

Run:

aws configure get region

Screenshot:

08_cli_region.png

## Lab 9 - List Regions

Run:

aws ec2 describe-regions --query "Regions[].RegionName" --output table

Screenshot:

09_regions_table.png

## Lab 10 - List Availability Zones

Run:

aws ec2 describe-availability-zones --region ap-south-1 --query "AvailabilityZones[].{Name:ZoneName,State:State,ZoneId:ZoneId}" --output table

If you use another Region, replace ap-south-1 with the intended Region.

Screenshot:

10_availability_zones.png

## Lab 11 - Shared Responsibility Exercise

Create:

shared_responsibility_notes.md

Add two sections:

- AWS Responsibility

- Customer Responsibility

Write EC2 and S3 examples.

Screenshot:

11_shared_responsibility_notes.png

## Lab 12 - Architecture Exercise

Create:

multi_az_design_notes.md

Describe:

- One Region

- Two Availability Zones

- Application instance in each Availability Zone

- Load balancer

- Health checks

Do not create the infrastructure yet.

Screenshot:

12_multi_az_notes.png

## Lab 13 - Cost Safety Checklist

Create:

cost_safety_checklist.md

Include:

- Pricing checked

- Region confirmed

- Resource tags planned

- Cleanup steps documented

- Budgets or alerts reviewed

- No unused resources running

Screenshot:

13_cost_safety_checklist.png

## Lab Validation Checklist

- AWS Console opened safely

- Signed-in identity verified

- Selected Region verified

- Regions and Availability Zones reviewed

- AWS CLI version verified

- CLI configuration reviewed

- Caller identity verified

- Shared responsibility documented

- Multi-Availability-Zone concept documented

- Cost-safety checklist created

- No paid infrastructure created for this Day01 lab

## Cleanup

This module should not create infrastructure.

If any resource was created separately:

Identify the resource

Confirm whether it produces charges

Delete it if no longer required

Verify deletion

Review the billing or cost-management view as appropriate

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
