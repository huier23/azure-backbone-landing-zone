resource "azurerm_resource_group" "rg_nsp_prd_global_01" {
  name     = local.nsp_prd_global_01.resource_group_name
  location = local.nsp_prd_global_01.location
}