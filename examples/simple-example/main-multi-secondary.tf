provider "google-beta" {}

locals {
  subnet_01 = "subnet-teste-subnet-01"
  subnet_02 = "subnet-teste-subnet-02"
}

variable "subnet_region" {
  type        = string
  default     = "southamerica-east1"
}

module "subnet" {
  source = "../../"
  project_id              = "shared-vpc-project"
  vpc_name                = "vpc-sharedvpc-1"

  subnets = [
    {
      subnet_name   = "${local.subnet_01}"
      subnet_ip     = "192.168.80.0/24"
      subnet_region = "${var.subnet_region}"
    }
  ]
  secondary_ranges = {
    "${local.subnet_01}" = [
      {
        range_name = "${local.subnet_01}-01"
        ip_cidr_range = "192.168.15.0/24"
      },
      {
        range_name = "${local.subnet_02}-02"
        ip_cidr_range = "192.168.65.0/24"
      }
    ]
  }

}
