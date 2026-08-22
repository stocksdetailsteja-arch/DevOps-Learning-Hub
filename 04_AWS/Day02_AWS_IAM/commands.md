# Day 02 - AWS IAM Commands

## Verify Current Identity

aws sts get-caller-identity

Screenshot:

01_identity_check.png

## List IAM Users

aws iam list-users

Screenshot:

02_list_users.png

## List IAM Groups

aws iam list-groups

Screenshot:

03_list_groups.png

## List IAM Roles

aws iam list-roles

Screenshot:

04_list_roles.png

## List Policies

aws iam list-policies --scope Local

Screenshot:

05_list_policies.png

## Create IAM User

aws iam create-user --user-name developer1

Screenshot:

06_create_user.png

## Create IAM Group

aws iam create-group --group-name developers

Screenshot:

07_create_group.png

## Add User To Group

aws iam add-user-to-group
 --group-name developers
 --user-name developer1

Screenshot:

08_add_user_group.png

## Create Managed Policy

aws iam create-policy
 --policy-name S3ReadOnlyPolicy

Screenshot:

09_create_policy.png

## Attach Policy

aws iam attach-group-policy
 --group-name developers
 --policy-arn POLICY_ARN

Screenshot:

10_attach_policy.png

## View User Details

aws iam get-user
 --user-name developer1

Screenshot:

11_get_user.png

## List Attached Policies

aws iam list-attached-group-policies
 --group-name developers

Screenshot:

12_group_policies.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
