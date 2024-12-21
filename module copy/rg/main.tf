resource "azurerm_resource_group" "rgblock" {
  for_each = var.rgvar
  name = each.value.resource_group_name
  location = each.value.location
}