# AWS CLI Configuration

## Why Commands Failed

aws sts get-caller-identity

Error:
Unable to locate credentials

Reason:
AWS CLI could not find:
- Access Key
- Secret Key
- IAM Role credentials

---

## AWS Authentication Methods

1. IAM Role (Best Practice)
2. AWS SSO
3. Access Keys

---

## aws configure

Purpose:
Configure AWS CLI authentication.

Files Created:

~/.aws/credentials
~/.aws/config

---

## Verification Command

aws sts get-caller-identity

Purpose:
Verify AWS identity and credentials.

---

## Remember Forever

AWS Console = Manual Work

AWS CLI = Command Line Work

Terraform = Automated Infrastructure

No Credentials = No AWS API Access

# AWS CLI Authentication Success

## Command

```bash
aws configure list
```

### Learning

- AWS CLI successfully found credentials.
- Access Key and Secret Key are configured.
- Default Region = ap-south-1 (Mumbai).

---

## Command

```bash
aws sts get-caller-identity
```

### Learning

- Verifies current AWS identity.
- Uses AWS STS (Security Token Service).
- Displays UserId, Account ID, and ARN.

---

## ARN

ARN = Amazon Resource Name

Example:

arn:aws:iam::ACCOUNT_ID:user/devops-cli-user

Used to uniquely identify AWS resources.

# EC2 Termination Learning

## What Gets Deleted

- AWS CLI Configuration
- ~/.aws/config
- ~/.aws/credentials
- Local files
- Installed software
- Practice screenshots stored only on EC2

## What Remains

- GitHub Repository
- IAM Users
- Access Keys
- S3 Buckets
- IAM Roles
- Other AWS resources

## Best Practice

- Push code to GitHub before termination.
- Never store Access Keys in GitHub.
- Save AWS credentials securely.

## Remember Forever

EC2 = Temporary Machine

GitHub = Permanent Storage

Terminate EC2 = Lose Local Data

Push First → Then Terminate
