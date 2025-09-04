output "java_server_public_ip" {
    value = "${aws_instance.javaserverec2.public_ip}"
    description = "java server ec2 public ip"
}