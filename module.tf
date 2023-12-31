module "vpc-sql-module" {
  source                  = "terraform-google-modules/network/google"
  version                 = "~> 7.0"
  project_id              = var.project_id
  network_name            = "vpc-sql-psa-network"
  auto_create_subnetworks = false
  mtu                     = 1460

  subnets = [
    {
      subnet_name   = "subnet-vpc-sql-psa"
      subnet_ip     = "10.10.30.0/24"
      subnet_region = var.region
    },
  ]
}

module "vpc-sql-psc-module" {
  source                  = "terraform-google-modules/network/google"
  version                 = "~> 7.0"
  project_id              = var.project_id
  network_name            = "vpc-sql-psc-network"
  auto_create_subnetworks = false
  mtu                     = 1460

  subnets = [
    {
      subnet_name   = "subnet-vpc-sql-psc"
      subnet_ip     = "10.10.40.0/24"
      subnet_region = var.region
    },
  ]
}