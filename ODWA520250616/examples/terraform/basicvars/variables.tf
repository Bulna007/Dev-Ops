variable "instanceType" {
  type = string
  description = "instanceType"
 #default = "t2.micro"
}

variable "keyPairName" {
  type = string
  description = "keyPair Name"
  #default = "javakp"
}

variable "securityGroupName" {
  type = string
  description = "security group Name"
  #default = "javaserversg"
}