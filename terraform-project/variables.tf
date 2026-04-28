variable "awsregion" {
}

variable "vpccidr" {
}

variable "publicsubnetcidrs" {
  type = list(string)
}

variable "privatesubnetcidrs" {
  type = list(string)
}

variable "availabilityzones" {
  type = list(string)
}

variable "instancetype" {
  type = string
}

variable "amiid" {
  type = string
}

variable "desiredcapacity" {
  type = number
}
