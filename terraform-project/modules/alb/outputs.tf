output "albdnsname" {
  value = aws_lb.main.dns_name
}
output "albsgid" {
  value = aws_security_group.albgroup1.id
}
output "targetgrouparn" {
  value = aws_lb_target_group.ec2tgroup.arn
}