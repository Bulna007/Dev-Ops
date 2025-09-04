variable "ec2config" {
  type = object({
    ami = string
    instance_type = string
    associate_public_ip_address = bool    
  })
}

