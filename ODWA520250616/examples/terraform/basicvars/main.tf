
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>6.2.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

data "aws_key_pair" "ec2keypair" {
    key_name = var.keyPairName    
}

data "aws_security_group" "ec2sg" {
    name = var.securityGroupName
}

resource "aws_instance" "javaserverec2" {
  instance_type = var.instanceType
  ami = "ami-0f918f7e67a3323f0"
  key_name = data.aws_key_pair.ec2keypair.key_name
  vpc_security_group_ids = [data.aws_security_group.ec2sg.id]
}