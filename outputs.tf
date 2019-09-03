output "id" {
  description = "ID da Subnet"
  value       = "${google_compute_subnetwork.main.id}"
}

output "cidr_block" {
  description = "CIDR da subnet"
  value       = "${google_compute_subnetwork.main.ip_cidr_range}"
}
