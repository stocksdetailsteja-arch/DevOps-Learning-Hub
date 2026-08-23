### Design a Highly Available AWS Architecture.

Use:

- Multi-AZ
- ALB
- Auto Scaling
- Private Subnets
- RDS Multi-AZ
- CloudWatch Monitoring

### Why Place RDS In Private Subnets?

To reduce attack surface and prevent direct internet access.

### What Happens When An EC2 Instance Fails?

ALB health checks fail and traffic is routed to healthy instances.

### How Would You Reduce AWS Costs?

- Right-size resources
- Delete unused EBS volumes
- Enable cleanup automation
- Use Auto Scaling
- Use lifecycle policies

### Explain Security Group vs NACL.

Security Groups:

- Stateful

NACL:

- Stateless

### Explain A Real Production Incident.

Users reported downtime.

Investigation revealed:

- Security Group change blocked ALB traffic.

Resolution:

- Restored missing inbound rule.
- Verified target health.
- Validated application availability.
