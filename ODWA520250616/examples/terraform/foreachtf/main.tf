
terraform {
  required_providers {
    aws = {
        version = "6.2.0"
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "aws_security_group" "serverssg" {
  name = "servers_sg"
  description = "allow ssh and http access"
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port = ingress.value.from_port
      to_port = ingress.value.to_port
      protocol = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}

resource "aws_instance" "servers" {
  instance_type =  "t2.micro"
  ami = "ami-0f918f7e67a3323f0"
  for_each = toset(var.servers)
  vpc_security_group_ids = [aws_security_group.serverssg.id]
  tags = {
    "Name" = each.value
  }
}