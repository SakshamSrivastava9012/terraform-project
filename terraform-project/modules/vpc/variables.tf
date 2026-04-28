variable "vpccidr" {
}

variable "publicsubnetcidrs" {
  type = list(string)
}

variable "privatesubnetcidrs" {
  type = list(string)
}

variable "availablezones" {
  type = list(string)
}
