output "subnet_names" {
  description = "ID da Subnet"
  value       = "${module.subnet.subnets_names}"
}

output "subnets_ips" {
  description = "CIDR da subnet"
  value       = "${module.subnet.subnets_ips}"
}

output "subnets_self_links" {
  value       = "${module.subnet.subnets_ips}"
  description = "Subnets Self Links"
}

output "subnets_regions" {
  value       = "${module.subnet.subnets_regions}"
  description = "Subnets Regions"
}
