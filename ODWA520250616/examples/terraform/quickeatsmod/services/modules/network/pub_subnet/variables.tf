variable "vpc_id" {
  type = string
}

variable "subnetconfig" {
  type = object({
    cidr_block        = string
    availability_zone = string
    subnet_name       = string
  })
}

variable "ig_name" {
  type = string
  description = "internet gateway name"
}