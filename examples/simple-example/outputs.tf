output "id" {
  description = "ID da Subnet"
  value       = "${module.subnet.id}"
}

output "cidr_block" {
  description = "CIDR da subnet"
  value       = "${module.subnet.ip_cidr_range}"
}
