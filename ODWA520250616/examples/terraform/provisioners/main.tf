terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.2.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

resource "aws_security_group" "rapidoec2sg" {
  name        = "rapidoec2sg"
  description = "allow ssh access to ec2 instance"
  tags = {
    "Name" = "rapidoec2sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.rapidoec2sg.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "all_traffic" {
  security_group_id = aws_security_group.rapidoec2sg.id
  ip_protocol       = -1
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_key_pair" "rapidokp" {
  key_name = "rapidokp"
  public_key = file("sshkeys/id_ed25519.pub")
}

resource "aws_instance" "rapidoec2" {
  ami = var.ec2config.ami
  instance_type = var.ec2config.instance_type
  associate_public_ip_address = var.ec2config.associate_public_ip_address
  vpc_security_group_ids = [aws_security_group.rapidoec2sg.id]
  key_name = aws_key_pair.rapidokp.key_name
  tags = {
    "Name" = "rapidoec2"
  }
  connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = file("sshkeys/id_ed25519")
  }
  provisioner "file" {
    source = "sh/installjdk.sh"
    destination = "/tmp/installjdk.sh"
  }
  provisioner "remote-exec" {
    inline = [ 
        "chmod u+x /tmp/installjdk.sh",
        "bash /tmp/installjdk.sh"
     ]
  }
}






