provider "google-beta" {}

module "subnet" {
  source = "../../"

  project_id              = "id-projeto"
  name                    = "subnet-teste"
  subnet_region           = "southamerica-east1"
  vpc_name                = "nome-vpc"
  ip_cidr_range           = "192.168.10.0/24"
  secondary_ip_range_name = "secondary-range"
  secondary_ip_cidr       = "192.168.11.0/24"
}
