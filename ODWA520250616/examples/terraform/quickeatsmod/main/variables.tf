variable "vpc_cidr_block" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "public_subnet_cidr" {
  type = string
}

variable "public_subnet_name" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "key_pair_name" {
  type = string
}

variable "public_key_file_path" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}