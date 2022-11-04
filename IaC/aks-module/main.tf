resource "azurerm_kubernetes_cluster" "aks-cluster" {
  #variable
  name                = var.cluster-name
  location            = var.cluster-location
  resource_group_name = var.resource-group

  dns_prefix          = "exampleaks1"

  default_node_pool {
    name = "default"
    #variable
    node_count = var.node-count
    #variable
    vm_size = var.node-vm-size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Env = "Production"
  }
}
