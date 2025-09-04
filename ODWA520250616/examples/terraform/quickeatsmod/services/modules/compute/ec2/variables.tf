variable "vpc_id" {
  type = string
}

variable "keypairconfig" {
  type = object({
    public_key_file_path = string
    key_name             = string
  })
}

variable "ingress" {
  type = object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
  })
}

variable "egress" {
  type = object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
  })
}

variable "ec2config" {
  type = object({
    subnet_id                   = string
    instance_type               = string
    ami                         = string
    instance_name               = string
    associate_public_ip_address = bool
  })
}