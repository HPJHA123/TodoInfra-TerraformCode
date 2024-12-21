resource "azurerm_container_registry" "acr" {

    for_each = var.acrvar
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku                 = each.value.sku
  }

data "azurerm_kubernetes_cluster" "aks" {
for_each = var.acrvar
    name = each.value.aks_name
    resource_group_name = each.value.resource_group_name
  
}

resource "azurerm_role_assignment" "acrrole" {
    for_each = var.acrvar

    principal_id = data.azurerm_kubernetes_cluster.aks[each.key].kubelet_identity[0].object_id
    role_definition_name               = "AcrPull"
    scope                              = azurerm_container_registry.acr[each.key].id
    skip_service_principal_aad_check   = false
  
}
