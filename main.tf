## create a resource group ##
resource "azurerm_resource_group" "aks-rg-demo01" {
  name     = "${var.aks_name}-${var.resource_group_name}"
  location = var.resource_group_location
}

## aks cluster ##
resource "azurerm_kubernetes_cluster" "aks-cluster_demo01" {
  name                = var.aks_name
  resource_group_name = azurerm_resource_group.aks-rg-demo01.name
  location            = azurerm_resource_group.aks-rg-demo01.location
  dns_prefix          = var.dns_prefix

  linux_profile {
    admin_username = var.admin_username

    # ssh key ##
    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }

}


