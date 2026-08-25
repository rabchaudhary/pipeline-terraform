module "resource_group" {
  source          = "../child_module/resource_group"
  resource_groups = var.resource_groups
}

module "virtual_network" {
  depends_on       = [module.resource_group]
  source           = "../child_module/vnet"
  virtual_networks = var.virtual_networks
}