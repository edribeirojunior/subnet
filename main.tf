terraform {
  required_version = "~> 0.12"
}

# ----------------------------------------------------------------------------------------------------------------------
# subnet
# ----------------------------------------------------------------------------------------------------------------------

resource "google_compute_subnetwork" "main" {
  provider      = "google-beta"
  project       = "${var.project_id}"
  name          = "${var.name}"
  region        = "${var.subnet_region}"
  network       = "${var.vpc_name}"
  ip_cidr_range = "${var.ip_cidr_range}"

  secondary_ip_range {
    range_name    = "${var.secondary_ip_range_name}"
    ip_cidr_range = "${var.secondary_ip_cidr}"
  }

  private_ip_google_access = "${var.private_ip_google_access}"

  enable_flow_logs = true

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}
