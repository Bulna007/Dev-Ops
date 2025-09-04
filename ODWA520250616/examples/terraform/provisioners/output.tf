output "public_ip" {
  value = "${aws_instance.rapidoec2.public_ip}"
  description = "rapido public ip"
}