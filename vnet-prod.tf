module "azure_vnet_prod" {
  source              = "./modules/vnet"  // Adjust the path according to your structure
  vnet_name           = "vnet-prod"
  address_space       = ["10.20.0.0/16"]
  location            = azurerm_resource_group.rg_prod.location
  resource_group_name = azurerm_resource_group.rg_prod.name
  subnets = [
    {
      name             = "apps"
      address_prefixes = ["10.20.1.0/24"]
    },
    {
      name             = "dbs"
      address_prefixes = ["10.20.2.0/24"]
    }
  ]
  tags = {
    Environment = "Production"
    Critical = "Yes"
  }
}
