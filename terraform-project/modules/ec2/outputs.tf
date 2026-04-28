output "ec2sgid" {
  value = aws_security_group.ec2sgroup.id
}
output "launchtemplateid" {
  description = "ID of the Launch Template"
  value       = aws_launch_template.webtestec2.id
}
output "autoscalinggroupname" {
  value = aws_autoscaling_group.webtestec2.name
}
