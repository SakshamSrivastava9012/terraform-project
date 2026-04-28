
resource "aws_security_group" "albgroup1" {
  name   = "albgroup"
  vpc_id = var.vpcid

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sakshamalbsgroup"
  }
}
resource "aws_lb" "main" {
  name            = "sakshammainalb"
  security_groups = [aws_security_group.albgroup1.id]
  subnets         = var.publicsubnetids

  tags = {
    Name = "sakshamalbmain"
  }
}
resource "aws_lb_target_group" "ec2tgroup" {
  name     = "sakshamec2tgrou"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpcid

  health_check {
    path                = "/"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 30
    timeout             = 5
  }

  tags = {
    Name = "sakshamec2tg"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ec2tgroup.arn
  }
}
