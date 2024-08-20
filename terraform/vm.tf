module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
  count   = length(data.aws_availability_zones.available.names)

  name = "${var.workload}-instance-${count.index}"

  instance_type               = var.instance-type
  key_name                    = var.instance-key-name
  monitoring                  = true
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = aws_subnet.public_subnet[count.index].id
  user_data                   = <<-EOF

#!/bin/bash
echo "Hello, World" > index.html
nohup busybox httpd -f -p 8080 &
EOF
  user_data_replace_on_change = true
  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}