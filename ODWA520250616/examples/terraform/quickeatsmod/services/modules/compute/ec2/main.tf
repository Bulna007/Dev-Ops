
resource "aws_key_pair" "keypair" {
  public_key = file(var.keypairconfig.public_key_file_path)
  key_name   = var.keypairconfig.key_name
}

resource "aws_security_group" "security_group" {
  vpc_id      = var.vpc_id
  description = "security group"
}

resource "aws_vpc_security_group_ingress_rule" "ingress" {
  security_group_id = aws_security_group.security_group.id
  from_port         = var.ingress.from_port
  to_port           = var.ingress.to_port
  ip_protocol       = var.ingress.protocol
  cidr_ipv4         = var.ingress.cidr_block
}

resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.security_group.id
  from_port         = var.egress.from_port
  to_port           = var.egress.to_port
  ip_protocol       = var.egress.protocol
  cidr_ipv4         = var.egress.cidr_block
}

resource "aws_instance" "ec2" {
  subnet_id              = var.ec2config.subnet_id
  instance_type          = var.ec2config.instance_type
  ami                    = var.ec2config.ami
  key_name               = aws_key_pair.keypair.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
  associate_public_ip_address = var.ec2config.associate_public_ip_address
  tags = {
    "Name" = var.ec2config.instance_name
  }
}
