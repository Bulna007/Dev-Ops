resource "aws_key_pair" "urotaxikp" {
  key_name = "urotaxikp"
  public_key = file("sshkeys/id_ed25519.pub")
}

resource "aws_instance" "urotaxijavaserverec2" {
    subnet_id = aws_subnet.urotaxipubsn.id
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    key_name = aws_key_pair.urotaxikp.key_name
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.urotaxiec2sg.id]
    tags = {
      "Name" = "urotaxijavaserverec2"
    }
}