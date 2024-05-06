output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network."
}

output "subnet_ids" {
  value       = { for s in azurerm_subnet.subnet : s.name => s.id }
  description = "A map of subnet names to subnet IDs."
}
