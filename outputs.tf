output "subnets_names" {
  value       = google_compute_subnetwork.main.*.name
  description = "The names of the subnets being created"
}

output "subnets_ips" {
  value       = google_compute_subnetwork.main.*.ip_cidr_range
  description = "The IPs and CIDRs of the subnets being created"
}

output "subnets_self_links" {
  value       = google_compute_subnetwork.main.*.self_link
  description = "The self-links of subnets being created"
}

output "subnets_regions" {
  value       = google_compute_subnetwork.main.*.region
  description = "The region where the subnets will be created"
}
