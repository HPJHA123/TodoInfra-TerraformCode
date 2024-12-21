resource "azurerm_kubernetes_cluster" "aksblock" {

    for_each = var.aksvar
  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix
  network_profile {
    network_plugin = each.value.network_plugin
    network_policy = each.value.network_policy
  }

  default_node_pool {
    name       = each.value.node_pool_name
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = each.value.identity_type
  }

  tags = {
    Environment = each.value.environment
  }
}




