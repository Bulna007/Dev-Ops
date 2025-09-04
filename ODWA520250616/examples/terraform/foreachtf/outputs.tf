output "public_ips" {
  value = [for inst in aws_instance.servers : inst.public_ip]
}