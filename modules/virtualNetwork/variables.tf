variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space of the virtual network"
}

variable "location" {
  type        = string
  description = "Location of the virtual network"
  default     = "eastasia"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
