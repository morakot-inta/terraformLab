module "rg" {
  source = "../modules/resourceGroup"

  # Input variables
  resource_group_name = "rg-9aug2023-1614"
  location            = "eastasia"
}

module "vnet" {
  source = "../modules/virtualNetwork"

  # Input variables
  virtual_network_name = "vnet-01"
  location             = "eastasia"
  address_space        = ["10.0.0.0/24"]
  resource_group_name  = "rg-9aug2023-1614"
  depends_on           = [module.rg]

}
