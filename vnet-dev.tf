module "azure_vnet_dev" {
  source              = "./modules/vnet"  // Adjust the path according to your structure
  vnet_name           = "vnet-dev"
  address_space       = ["10.10.0.0/16"]
  location            = azurerm_resource_group.rg_dev.location
  resource_group_name = azurerm_resource_group.rg_dev.name
  subnets = [
    {
      name             = "apps"
      address_prefixes = ["10.10.1.0/24"]
    },
    {
      name             = "dbs"
      address_prefixes = ["10.10.2.0/24"]
    }
  ]
  tags = {
    Environment = "staging"
    Critical = "No"
  }
}
