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

resource "aws_vpc" "urotaxivpc" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "Name" = "urotaxivpc"
  }
}

resource "aws_subnet" "urotaxipubsn" {
  vpc_id = aws_vpc.urotaxivpc.id
  cidr_block = "10.1.1.0/24"
  tags = {
    "Name" = "urotaxipubsn"
  }
}

resource "aws_internet_gateway" "urotaxiigw" {
  vpc_id = aws_vpc.urotaxivpc.id
  tags = {
    "Name" = "urotaxiigw"
  }
}

resource "aws_route_table" "urotaxiigwrt" {
  vpc_id = aws_vpc.urotaxivpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.urotaxiigw.id
  }
}

resource "aws_route_table_association" "urotaxiigwrtasso" {
  subnet_id = aws_subnet.urotaxipubsn.id
  route_table_id = aws_route_table.urotaxiigwrt.id
}

resource "aws_security_group" "urotaxiec2sg" {
  vpc_id = aws_vpc.urotaxivpc.id
  name = "urotaxiec2sg"
  description = "allow ssh access to urotaxi ec2 instance"
  tags = {
    "Name" = "urotaxiec2sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "urotaxiec2sgallowssh" {
  security_group_id = aws_security_group.urotaxiec2sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "urotaxiec2sgegressallowany" {
  security_group_id = aws_security_group.urotaxiec2sg.id
  cidr_ipv4 = "0.0.0.0/0"
  from_port = 0
  to_port = 0
  ip_protocol = "tcp"
}