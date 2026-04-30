
resource "aws_security_group" "ec2sgroup" {
  name   = "ec2-sg"
  vpc_id = var.vpcid

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [var.albsgid]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sakshamec2sg"
  }
}

resource "aws_instance" "webtestec2" {
  ami           = var.amiid
  instance_type = var.instancetype

  vpc_security_group_ids = [aws_security_group.ec2sgroup.id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd

    echo "<h1> hello world</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name = "sakshamwebserver"
  }
}

