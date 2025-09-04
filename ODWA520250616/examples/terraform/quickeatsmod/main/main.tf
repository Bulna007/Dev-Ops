terraform {
  required_providers {
    aws = {
      version = "6.2.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

module "quickeats_vpc" {
  source = "../services/modules/network/vpc"
  vpcconfig = {
    cidr_block = var.vpc_cidr_block
    vpc_name   = var.vpc_name
  }
}

module "quickeats_public_subnet" {
  source = "../services/modules/network/pub_subnet"
  vpc_id = module.quickeats_vpc.vpc_id
  subnetconfig = {
    subnet_name       = var.public_subnet_name
    cidr_block        = var.public_subnet_cidr
    availability_zone = var.availability_zone
  }
  ig_name = "${var.vpc_name}_ig"
}

module "quickeats_javaserver" {
  source = "../services/modules/compute/ec2"
  vpc_id = module.quickeats_vpc.vpc_id
  keypairconfig = {
    key_name             = var.key_pair_name
    public_key_file_path = var.public_key_file_path
  }
  ingress = {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
  }
  egress = {
    from_port  = -1
    to_port    = -1
    protocol   = "-1"
    cidr_block = "0.0.0.0/0"
  }
  ec2config = {
    ami                         = var.ami
    instance_type               = var.instance_type
    subnet_id                   = module.quickeats_public_subnet.subnet_id
    associate_public_ip_address = true
    instance_name               = var.instance_name
  }
}
