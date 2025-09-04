output "quickeats_vpc_id" {
  value = "${module.quickeats_vpc.vpc_id}"
}

output "quickeats_javaserver_public_ip_address" {
  value = "${module.quickeats_javaserver.ec2_public_ip}"
}