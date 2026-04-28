awsregion          = "ap-south-1"
vpccidr            = "10.0.0.0/16"
publicsubnetcidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
privatesubnetcidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availabilityzones  = ["ap-south-1a", "ap-south-1b"]
instancetype       = "t2.micro"
amiid              = "ami-0eacb8127f9b58e90"
desiredcapacity    = 2