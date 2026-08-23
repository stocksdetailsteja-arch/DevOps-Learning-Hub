output "vpc_id" {
  description = "Created VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Created public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "instance_ids" {
  description = "Created EC2 instance IDs"
  value       = module.compute.instance_ids
}

output "load_balancer_dns_name" {
  description = "Application Load Balancer DNS name"
  value       = module.load_balancer.load_balancer_dns_name
}

output "application_url" {
  description = "HTTP URL for validating the application"
  value       = "http://${module.load_balancer.load_balancer
