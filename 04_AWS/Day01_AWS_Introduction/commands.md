# Day 01 - AWS Introduction Commands

## Important Safety Rule

Do not paste AWS access keys, secret access keys, passwords, session tokens, account IDs, or private resource details into:

- GitHub

- Screenshots

- Documentation

- Chat messages

- Shared terminals

Redact sensitive information before saving screenshots.

## Command 1 - Verify AWS CLI

Command:

aws --version

Purpose:

Display the installed AWS CLI version.

Screenshot:

01_aws_cli_version.png

## Command 2 - View AWS CLI Help

Command:

aws help

Purpose:

Display AWS CLI help.

Exit the help viewer using:

q

Screenshot:

02_aws_cli_help.png

## Command 3 - View Current CLI Configuration

Command:

aws configure list

Purpose:

Display the current configuration source for profile, credentials, and Region.

Security note:

Review the output before capturing a screenshot.

Screenshot:

03_aws_configure_list_redacted.png

## Command 4 - List Profiles

Command:

aws configure list-profiles

Purpose:

Display configured AWS CLI profile names.

Screenshot:

04_aws_profiles.png

## Command 5 - Verify Current Identity

Command:

aws sts get-caller-identity

Purpose:

Display the identity used by the AWS CLI.

Expected fields include:

- UserId

- Account

- Arn

Security note:

Redact account and identity details before public GitHub upload.

Screenshot:

05_caller_identity_redacted.png

## Command 6 - Verify Configured Region

Command:

aws configure get region

Purpose:

Display the default Region configured for the active profile.

Screenshot:

06_configured_region.png

## Command 7 - Use A Named Profile

Command pattern:

aws sts get-caller-identity --profile PROFILE_NAME

Replace PROFILE_NAME with the actual non-sensitive profile name.

Screenshot:

07_named_profile_identity_redacted.png

## Command 8 - Use A Region For One Command

Command pattern:

aws ec2 describe-regions --region ap-south-1

Purpose:

Override the default Region for one command.

Permissions are required.

Screenshot:

08_region_override.png

## Command 9 - List Available Regions

Command:

aws ec2 describe-regions --query "Regions[].RegionName" --output table

Purpose:

Display Region names available through the API response for the authenticated account and request context.

Screenshot:

09_region_list.png

## Command 10 - View Availability Zones

Command:

aws ec2 describe-availability-zones --region ap-south-1 --query "AvailabilityZones[].{Name:ZoneName,State:State,ZoneId:ZoneId}" --output table

Purpose:

Display Availability Zone names, states, and Zone IDs for the selected Region and account.

Screenshot:

10_availability_zones.png

## Command 11 - Display Output As JSON

Command:

aws ec2 describe-regions --output json

Purpose:

Display structured JSON output.

Screenshot:

11_json_output.png

## Command 12 - Display Output As Table

Command:

aws ec2 describe-regions --query "Regions[].RegionName" --output table

Purpose:

Display a human-readable table.

Screenshot:

12_table_output.png

## Command 13 - Display Output As Text

Command:

aws ec2 describe-regions --query "Regions[].RegionName" --output text

Purpose:

Display compact text output useful for scripts.

Screenshot:

13_text_output.png

## Command 14 - Inspect AWS Environment Variables Safely

Command:

env | grep '^AWS_' | sed 's/=.*/=[REDACTED]/'

Purpose:

Display AWS-related environment-variable names while redacting their values.

Do not run unrestricted output commands when secrets may be present in the terminal environment.

Screenshot:

14_aws_environment_redacted.png

## Command 15 - Confirm Linux Region Variable Example

Temporary variable:

AWS_REGION="ap-south-1"

Display:

echo "$AWS_REGION"

This is a shell variable and does not automatically configure every AWS CLI invocation unless exported or passed explicitly.

Screenshot:

15_region_variable.png

## CLI Investigation Sequence

aws --version

aws configure list

aws configure get region

aws sts get-caller-identity

Confirm system time

Confirm DNS and HTTPS connectivity

Retry the non-destructive command

Review the exact error

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
