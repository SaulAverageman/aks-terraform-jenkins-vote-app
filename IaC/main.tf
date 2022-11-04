terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

data "azurerm_resource_group" "resource-group" {
  name = var.resource-group-name
}


module "aks-cluster" {
  source           = "./aks-module"
  cluster-name     = "demo-cluster"
  resource-group   = data.azurerm_resource_group.resource-group.name
  cluster-location = data.azurerm_resource_group.resource-group.location

  node-count   = 2
  node-vm-size = var.node-vm-size
}