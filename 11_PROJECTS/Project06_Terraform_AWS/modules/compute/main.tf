resource "aws_instance" "application" {
  count = var.instance_count

  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids[count.index % length(var.subnet_ids)]
  vpc_security_group_ids = [var.application_security_group_id]
  key_name               = var.key_name

  user_data = <<-USERDATA
    #!/usr/bin/env bash
    set -e

    apt-get update
    apt-get install -y nginx

    cat > /var/www/html/index.html <<EOF
    <html>
      <head>
        <title>Terraform AWS Project</title>
      </head>
      <body>
        <h1>Terraform AWS Infrastructure</h1>
        <p>Application instance: $(hostname)</p>
      </body>
    </html>
    EOF

    systemctl enable nginx
    systemctl restart nginx
  USERDATA

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted   = true
    volume_type = "gp3"
    volume_size = 8
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.name_prefix}-app-${
