resource_groups = {
  "rg1" = {
    name     = "rg1"
    location = "eastus"
  }
}

virtual_networks = {
  "vnet1" = {
    name                = "vnet1"
    location            = "eastus"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "rg1"
  }
}