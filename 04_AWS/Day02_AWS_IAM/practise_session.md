# Day 02 - AWS IAM Practice Session

## Lab Setup

Create:

PRACTISE_SESSION/Day02_AWS_IAM_Lab

## Lab 1

Verify Current Identity

aws sts get-caller-identity

Screenshot:

01_identity_check.png

## Lab 2

Review Existing Users

aws iam list-users

Screenshot:

02_list_users.png

## Lab 3

Create User

developer1

Screenshot:

03_create_user.png

## Lab 4

Create Developers Group

developers

Screenshot:

04_create_group.png

## Lab 5

Add User To Group

Screenshot:

05_add_user_to_group.png

## Lab 6

Review Policies

Screenshot:

06_list_policies.png

## Lab 7

Attach ReadOnly Policy

Screenshot:

07_attach_policy.png

## Lab 8

Enable User MFA

Console Exercise

Screenshot:

08_enable_mfa.png

## Lab 9

Create ReadOnly Auditor User

auditor1

Screenshot:

09_auditor_user.png

## Lab 10

Validate Access Model

User

↓

Group

↓

Policy

Screenshot:

10_access_model.png

## Lab 11

Document Least Privilege Design

Create:

least_privilege_notes.md

Screenshot:

11_least_privilege_notes.png

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
