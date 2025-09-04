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

resource "aws_instance" "javaserver" {
  instance_type = var.environment == "prod" ? "t2.large" : "t2.micro"
  ami = "ami-0f918f7e67a3323f0"
  count = 3
  tags = {
    "Name" = "javaserver_${count.index}"
  }
}