module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"

  resource_group_name = var.resource_group_name
  location            = var.location

  vnet_name                  = var.vnet_name
  address_space              = var.vnet_address_space
  subnet_name                = var.subnet_name
  subnet_address_prefixes   = var.subnet_address_prefixes

  depends_on = [
    module.resource_group
  ]
}