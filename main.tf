terraform {
  required_version = "~> 0.12"
}

# ----------------------------------------------------------------------------------------------------------------------
# subnet
# ----------------------------------------------------------------------------------------------------------------------

resource "google_compute_subnetwork" "main" {
  provider      = "google-beta"
  count = length(var.subnets)

  name                     = var.subnets[count.index]["subnet_name"]
  ip_cidr_range            = var.subnets[count.index]["subnet_ip"]
  region                   = var.subnets[count.index]["subnet_region"]
  network                  = "${var.vpc_name}"
  project                  = "${var.project_id}"
  secondary_ip_range       = var.secondary_ranges[lookup(var.subnets[count.index], "subnet_name", null)]

  private_ip_google_access = "${var.private_ip_google_access}"
  enable_flow_logs = true

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}
