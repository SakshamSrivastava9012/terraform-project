output "albdnsname" {
  value = module.alb.albdnsname
}


output "vpcid" {
  value = module.vpc.vpcid
}
output "publicsubnetids" {
  value = module.vpc.publicsubnetids
}
output "privatesubnetids" {
  value = module.vpc.privatesubnetids
}
