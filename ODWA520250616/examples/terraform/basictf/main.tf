terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.2.0"
    }
  }
  backend "s3" {
    bucket = "basictfbucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    #dynamodb_table = "basic-terraform-lock-table"
    use_lockfile = true
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

resource "aws_key_pair" "basickp" {
  key_name   = "basickp"
  public_key = file("sshkeys/id_ed25519.pub")
}

resource "aws_security_group" "basicsg" {
  description = "ssh public access"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "javaec2" {
  ami                    = "ami-0f918f7e67a3323f0"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.basickp.id
  vpc_security_group_ids = [aws_security_group.basicsg.id]
  tags = {
    "Name"        = "basicec2"
    "Environment" = "Production"
  }
}
