rgvar1 = {
  rg1 = {
    resource_group_name = "rginfra"
    location            = "japaneast"
  }
}


strgvar1 = {
  stg1 = {
    name                     = "storageinfrassx"
    resource_group_name      = "rginfra"
    location                 = "japaneast"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
  }
}

aksvar1 = {
  aks1 = {
    aks_name            = "developmentaks"
    location            = "japaneast"
    resource_group_name = "rginfra"
    dns_prefix          = "dnsaks"
    node_pool_name      = "nodepoolaks"
    node_count          = 1
    vm_size             = "Standard_D2_v2"
    identity_type       = "SystemAssigned"
    environment         = "Development"

    network_plugin = "azure"
    network_policy = "calico"

  }
}

acrvar1 = {
    acr1 ={
  name                = "containerRegistrydevjp"
  aks_name            = "developmentaks"
  resource_group_name = "rginfra"
  location            = "japaneast"
  sku                 = "Standard"
    }

}
 