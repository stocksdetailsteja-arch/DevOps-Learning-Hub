module "vpc" {
  source = "../modules/vpc"

  name_prefix        = local.name_prefix
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  common_tags         = local.common_tags
}

module "security" {
  source = "../modules/security"

  name_prefix     = local.name_prefix
  vpc_id          = module.vpc.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
  common_tags      = local.common_tags
}

module "compute" {
  source = "../modules/compute"

  name_prefix              = local.name_prefix
  ami_id                   = data.aws_ami.ubuntu.id
  instance_type            = var.instance_type
  instance_count           = var.instance_count
  subnet_ids               = module.vpc.public_subnet_ids
  application_security_group_id = module.security.application_security_group_id
  key_name                 = var.key_name
  common_tags              = local.common_tags
}

module "load_balancer" {
  source = "../modules/load_balancer"

  name_prefix               = local.name_prefix
  vpc_id                    = module.vpc.vpc_id
  subnet_ids                = module.vpc.public_subnet_ids
  alb_security_group_id     = module.security.alb_security_group_id
  instance_ids              = module.compute.instance_ids
  common_tags               = local.common_tags
}
