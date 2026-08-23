# Project 06 - Practice Sessio*

## Lab 1 - Verify Prerequisites
*Run:

terraform version

aws --ver*ion

aws sts get-caller-identity

*xpected:

- Terraform available
- *WS CLI available
- Approved AWS id*ntity returned

Capture:

- 01_ter*aform_version.png
- 02_aws_identit*.png

Do not capture credentials.
*## Lab 2 - Create Project Structur*

Create all directories and files*

Run:

tree Project06_Terraform_A*S

Capture:

- 03_project_structur*.png

## Lab 3 - Create Remote Bac*end

Run:

./scripts/bootstrap-bac*end.sh \
  <globally-unique-bucket*name> \
  ap-south-1

Verify:

- B*cket exists
- Versioning enabled
-*Public access blocked
- Encryption*configured

Capture:

- 04_backend*bucket.png
- 05_backend_versioning*png

## Lab 4 - Configure Backend
*Copy the example:

cp backend/back*nd.hcl.example \
  backend/backend*hcl

Replace:

- Bucket name
- Sta*e key
- Region

Do not commit back*nd.hcl if it contains environment-*pecific information you do not wan* published.

## Lab 5 - Initialize*Terraform

Run:

terraform -chdir=*erraform init \
  -backend-config=*./backend/backend.hcl

Verify:

- *ackend initialized
- Providers ins*alled
- Modules resolved
- Depende*cy lock file created

Capture:

- *6_terraform_init.png

## Lab 6 - F*rmat Terraform

Run:

terraform -c*dir=terraform fmt -recursive

terr*form -chdir=terraform fmt -check -*ecursive

Capture:

- 07_terraform*fmt.png

## Lab 7 - Validate Confi*uration

Run:

terraform -chdir=te*raform validate

Expected:

- Conf*guration is valid

Capture:

- 08_*erraform_validate.png

## Lab 8 - *repare Variables

Copy:

cp terraf*rm/terraform.tfvars.example \
  te*raform/terraform.tfvars

Change:

* Trusted SSH CIDR
- Environment
- *egion
- Instance type if required
*Do not add credentials.

Do not co*mit terraform.tfvars.

## Lab 9 - *reate Plan

Run:

terraform -chdir*terraform plan \
  -var-file=terra*orm.tfvars \
  -out=tfplan

Review*

- Resources created
- Security G*oup rules
- Instance count
- Subne* CIDRs
- ALB configuration
- Repla*ement operations
- Destruction ope*ations
- Unexpected changes

Captu*e:

- 09_terraform_plan.png
- 10_p*an_review.png

## Lab 10 - Apply R*viewed Plan

Run:

terraform -chdi*=terraform apply tfplan

Do not us* automatic approval for the portfo*io lab.

Capture:

- 11_terraform_*pply.png

## Lab 11 - Validate AWS*Infrastructure

Verify:

- VPC
- S*bnets
- Internet Gateway
- Route t*ble
- Security Groups
- EC2 instan*es
- Application Load Balancer
- T*rget Group
- Listener

Capture:

-*12_vpc_created.png
- 13_subnets_cr*ated.png
- 14_security_groups.png
* 15_ec2_instances.png

## Lab 12 -*Validate ALB Target Health

Run:

*ws elbv2 describe-target-health \
* --target-group-arn <target-group-*rn>

Wait until the expected targe*s are healthy.

If targets are unh*althy:

- Review Security Groups
-*Review Nginx
- Review health-check*path
- Review route table
- Review*user-data logs

Capture:

- 16_alb*target_health.png

## Lab 13 - Val*date Application

Run:

terraform *chdir=terraform output

terraform *chdir=terraform output \
  -raw ap*lication_url

curl -f "$(
  terraf*rm -chdir=terraform output \
    -*aw application_url
)"

Capture:

-*17_application_validation.png
- 18*terraform_outputs.png

## Lab 14 -*Verify Remote State

Run:

aws s3 *s \
  s3://<bucket-name>/project06*dev/

Confirm the state object exi*ts.

Do not download or display co*plete state in screenshots.

Captu*e:

- 19_remote_state.png

## Lab *5 - Verify Idempotent Plan

Run:

*erraform -chdir=terraform plan \
 *-var-file=terraform.tfvars

Expect*d:

- No unintended infrastructure*changes

Document the actual resul*.

## Lab 16 - Test Drift Detectio*

Use a controlled non-production *esource.

Make a documented tag ch*nge through the AWS console.

Run:*
terraform -chdir=terraform plan \*  -var-file=terraform.tfvars

Obse*ve the detected difference.

Choos* one controlled response:

- Resto*e the Terraform-managed value with*apply
- Update reviewed configurat*on to accept the change
- Import a* unmanaged resource when appropria*e

Capture:

- 20_drift_detection.*ng

Do not perform destructive dri*t experiments.

## Lab 17 - Unders*and State Locking

Start one contr*lled Terraform operation that hold* the state lock.

From another ter*inal, attempt another state-changi*g operation.

Observe the lock res*onse.

Do not use force-unlock whi*e the first operation remains acti*e.

Capture:

- 21_state_lock_test*png

## Lab 18 - Test Failed Plan *afely

Introduce a controlled vali*ation error.

Examples:

- Invalid*variable type
- Invalid environmen*
- Invalid resource reference

Run*

terraform validate

or:

terrafo*m plan

Record:

- Error
- Root ca*se
- Correction
- Successful valid*tion

Restore valid configuration.*
## Lab 19 - Create Destruction Pl*n

Run:

terraform -chdir=terrafor* plan \
  -destroy \
  -var-file=t*rraform.tfvars \
  -out=destroy.tf*lan

Review:

- Resources targeted*for deletion
- Whether any shared *esource is included
- Whether stat* backend is excluded
- Whether dat* must be preserved

Capture:

- 22*destroy_plan.png

## Lab 20 - Dest*oy Lab Resources

After saving evi*ence:

terraform -chdir=terraform *pply destroy.tfplan

Verify:

- EC* instances terminated
- ALB remove*
- Target Group removed
- Security*Groups removed
- Subnets removed
-*VPC removed

Capture:

- 23_terraf*rm_destroy.png
- 24_cleanup_valida*ion.png

## Lab 21 - Preserve Back*nd Safely

The remote backend may *e preserved for later projects.

I* removing it:

- Confirm no active*state requires it
- Preserve requi*ed state versions
- Confirm no loc* exists
- Empty the bucket
- Delet* bucket only after review

## Lab *2 - Push To GitHub

Before committ*ng:

- Remove state files
- Remove*plan files
- Remove terraform.tfva*s
- Remove backend.hcl if required*- Remove credentials
- Remove priv*te keys
- Review screenshots
- Con*irm no account-sensitive content i* exposed

Run:

git status

git di*f --check

git add Project06_Terra*orm_AWS

git commit -m "Add reusab*e Terraform AWS infrastructure pro*ect"

git push origin main

Captur*:

- 25_github_project.png
