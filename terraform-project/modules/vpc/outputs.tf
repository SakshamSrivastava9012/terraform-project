output "vpcid" {
  value = aws_vpc.mainvpc.id
}

output "publicsubnetids" {

  value = aws_subnet.public[*].id #gpt nhi hai splat hai kal hi pda hai sir
}

output "privatesubnetids" {
  value = aws_subnet.private[*].id
}
