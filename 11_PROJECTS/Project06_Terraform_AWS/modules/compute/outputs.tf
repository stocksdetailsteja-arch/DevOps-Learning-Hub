output "instance_ids" {
  value = aws_instance.application[*].id
}

output "public_ip_addresses" {
  value = aws_instance.application[*].public_ip
}
