provider "google-beta" {}

locals {
  subnet_01 = "subnet-teste-subnet-01"
  subnet_02 = "subnet-teste-subnet-02"
}


module "subnet" {
  source = "../../"
  project_id              = "edsharedvpc-1"
  vpc_name                = "nome-vpc"

  subnets = [
     {
      subnet_name   = "${local.subnet_01}"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "${var.subnet_region}"
    },
    {
      subnet_name           = "${local.subnet_02}"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = "${var.subnet_region}"
    },
  ]
  secondary_ranges = {
    "${local.subnet_01}" = []
    "${local.subnet_02}" = []
  }

}
