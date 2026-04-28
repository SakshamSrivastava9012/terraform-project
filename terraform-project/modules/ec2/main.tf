
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

resource "aws_launch_template" "webtestec2" {

  image_id      = var.amiid
  instance_type = var.instancetype

  user_data = base64encode(<<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    
    echo "<h1> hello world</h2>" > /var/www/html/index.html
  EOF
  )

  network_interfaces {
    security_groups = [aws_security_group.ec2sgroup.id]
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "sakshamwebserver"
    }
  }
}

resource "aws_autoscaling_group" "webtestec2" {
  name                = "sakshamasg"
  vpc_zone_identifier = var.privatesubnetids
  desired_capacity    = var.desiredcapacity
  max_size            = var.desiredcapacity
  min_size            = var.desiredcapacity
  target_group_arns   = [var.targetgrouparn]

  launch_template {
    id      = aws_launch_template.webtestec2.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "sakshamasginstance"
    propagate_at_launch = true
  }
}
