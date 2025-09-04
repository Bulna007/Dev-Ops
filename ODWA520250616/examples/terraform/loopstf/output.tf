output "public_ips" {
  value = [for inst in aws_instance.javaserver : inst.public_ip]
}