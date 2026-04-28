terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "sakshamterrafmtestbucketunique9012"
    key            = "project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "sakshamTerraformLock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.awsregion
}
module "vpc" {
  source             = "./modules/vpc"
  vpccidr            = var.vpccidr
  publicsubnetcidrs  = var.publicsubnetcidrs
  privatesubnetcidrs = var.privatesubnetcidrs
  availablezones     = var.availabilityzones
}
module "alb" {
  source          = "./modules/alb"
  vpcid           = module.vpc.vpcid
  publicsubnetids = module.vpc.publicsubnetids
}
module "ec2" {
  source           = "./modules/ec2"
  vpcid            = module.vpc.vpcid
  privatesubnetids = module.vpc.privatesubnetids
  albsgid          = module.alb.albsgid
  targetgrouparn   = module.alb.targetgrouparn
  instancetype     = var.instancetype
  amiid            = var.amiid
  desiredcapacity  = var.desiredcapacity
}
