terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "5e7275ad-fc65-40a2-8897-2194edb50882"
  tenant_id       = "c1ef35fa-feb3-4ab0-888c-c6778cb1e96d"

  use_cli = false
}