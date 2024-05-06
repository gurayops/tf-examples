resource "azurerm_resource_group" "rg_dev" {
  name     = "rg-dev"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg_prod" {
  name     = "rg-prod"
  location = "West Europe"
}
