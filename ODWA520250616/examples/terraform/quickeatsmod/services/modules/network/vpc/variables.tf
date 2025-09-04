variable "vpcconfig" {
  type = object({
    cidr_block = string
    vpc_name = string
  })
}