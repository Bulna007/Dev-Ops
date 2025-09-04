resource "aws_subnet" "pubsubnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnetconfig.cidr_block
  availability_zone = var.subnetconfig.availability_zone
  tags = {
    "Name" = var.subnetconfig.subnet_name
  }
}

resource "aws_internet_gateway" "intgateway" {
  vpc_id = var.vpc_id
  tags = {
    "Name" : var.ig_name
  }
}

resource "aws_route_table" "ig_table_table" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.intgateway.id
  }
}

resource "aws_route_table_association" "ig_route_table_assoc" {
  route_table_id = aws_route_table.ig_table_table.id
  subnet_id      = aws_subnet.pubsubnet.id
}
