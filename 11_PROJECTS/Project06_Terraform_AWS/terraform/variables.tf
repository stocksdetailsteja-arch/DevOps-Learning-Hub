variable "aws_region" {
  description = "AWS Region used for the project"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name used for naming and tagging"
  type        = string
  default     = "terraform-aws-project"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "test", "stage", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, test, stage, or prod."
  }
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR ranges for public subnets"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "availability_zones" {
  description = "Availability Zones for public subnets"
  type        = list(string)
  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_count" {
  description = "Number of application EC2 instances"
  type        = number
  default     = 2

  validation {
    condition     = var.instance_count >= 1
    error_message = "At least one EC2 instance must be configured."
  }
}

variable "allowed_ssh_cidr" {
  description = "Trusted CIDR allowed to connect through SSH"
  type        = string
  default     = "127.0.0.1/32"
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = null
  nullable    = true
}
