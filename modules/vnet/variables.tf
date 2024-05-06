variable "vnet_name" {
  type        = string
  description = "The name of the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the VNet."
}

variable "location" {
  type        = string
  description = "The Azure region where the VNet will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the VNet."
}

variable "subnets" {
  type = list(object({
    name              = string
    address_prefixes  = list(string)
  }))
  description = "List of subnets to be created in the virtual network."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource."
}
