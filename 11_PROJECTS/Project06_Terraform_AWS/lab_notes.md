# Project*06 - Lab Notes

## Environment

Cl*ud Provider:

AWS

Infrastructure *ool:

Terraform

## Local Tool Ver*ions

Document:

- Terraform versi*n
- AWS Provider version
- AWS CLI*version

## AWS Context

Document:*
- AWS Region
- Environment
- Appr*ved execution role or user name
- *vailability Zones

Do not document*access keys.

## Backend Configura*ion

Document:

- Backend type
- S*ate key pattern
- Region
- Version*ng status
- Locking status
- Encry*tion status
- Public access block *tatus

Do not record sensitive sta*e contents.

## Resources Created
*Document actual created resources:*
- VPC
- Subnets
- Internet Gatewa*
- Route Table
- Security Groups
-*EC2 instances
- ALB
- Target Group*- Listener

## Terraform Validatio*

Record:

- fmt result
- validate*result
- plan result
- apply resul*
- repeated plan result
- destroy *esult

## Application Validation

*ecord:

- ALB target health
- Appl*cation URL result
- HTTP response
* EC2 service state if inspected

#* Drift Exercise

### Change Introd*ced

Document the controlled chang*.

### Terraform Detection

Docume*t the plan difference.

### Resolu*ion

Document whether Terraform re*tored the configured state or conf*guration was intentionally updated*

### Prevention

- Git review
- R*stricted console access
- CI/CD wo*kflow
- Scheduled drift plans

## *tate Lock Exercise

Document:

- O*eration holding the lock
- Second *peration attempted
- Lock response*- Safe resolution

Do not invent l*ck IDs.

## Error Exercise

Docume*t:

- Error message
- Failing conf*guration
- Root cause
- Correction*- Successful validation

## Cleanu* Status

- [ ] Destruction plan re*iewed
- [ ] Terraform-managed reso*rces removed
- [ ] EC2 instances c*nfirmed terminated
- [ ] ALB confi*med deleted
- [ ] EBS volumes revi*wed
- [ ] Elastic IP addresses rev*ewed
- [ ] Backend intentionally r*tained or deleted
- [ ] AWS Billin* reviewed
- [ ] Files pushed to Gi*
