variable "name_prefix" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "subnet_ids" {
  type = list(string)
}

variable "application_security_group_id" {
  type = string
}

variable "key_name" {
  type      = string
  nullable  = true
  default   = null
}

variable "common_tags" {
  type = map(string)
}
