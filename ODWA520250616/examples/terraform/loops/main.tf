terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.3.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}
resource "aws_instance" "ec2" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  count         = 3
  tags = {
    "Name" = "javaserver_${count.index}"
  }
}
