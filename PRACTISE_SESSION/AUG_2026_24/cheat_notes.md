# AWS CLI Cheat Notes

- `aws --version`
  - Checks whether AWS CLI is installed.
  - Displays AWS CLI version, Python version, OS details, and architecture.

- `aws configure`
  - Configures AWS credentials for CLI access.
  - Creates configuration files under `~/.aws/`.

- `aws configure list`
  - Verifies current AWS CLI configuration.
  - Shows configured profile, credentials, and region.

- `aws configure list-profiles`
  - Lists all configured AWS CLI profiles.
  - Useful when working with multiple AWS accounts.

- `aws sts get-caller-identity`
  - Verifies who you are in AWS.
  - Shows Account ID, User ID, and ARN.

# AWS Authentication Methods

- IAM Role
  - Best practice for production.
  - No need to store access keys.
  - Uses temporary credentials.

- IAM User + Access Keys
  - Common for learning and CLI practice.
  - Requires Access Key ID and Secret Access Key.

- AWS SSO
  - Preferred in enterprise environments.
  - Provides centralized authentication.

# Important Learning

- AWS Console = Manual Operations
- AWS CLI = Command Line Operations
- Terraform = Infrastructure Automation

# Troubleshooting

- Error:

# AWS CLI Authentication Cheat Sheet

- aws configure
  - Configure AWS credentials.

- aws configure list
  - Verify configured credentials and region.

- aws sts get-caller-identity
  - Verify current AWS identity.

# STS

- STS = Security Token Service
- Used to verify who is authenticated.

# ARN

- ARN = Amazon Resource Name
- Uniquely identifies AWS resources.

Example:

arn:aws:iam::ACCOUNT_ID:user/devops-cli-user

# Remember Forever

- Access Key = Username
- Secret Key = Password
- Region = AWS Location
- ARN = Unique AWS Resource Identifier
- STS = "Who Am I?" service

# Production Best Practice

Before any major AWS action:

aws sts get-caller-identity

Verify:
- Correct User
- Correct Account
- Correct Environment


# Remember Forever

- EC2 Terminated = Machine Deleted
- Local Files = Lost
- AWS CLI Config = Lost
- GitHub Data = Safe
- IAM User = Safe
- AWS Account = Safe

Learning Workflow:

Launch EC2
→ Clone GitHub
→ aws configure
→ Practice
→ Git Push
→ Terminate EC2
