resource "azurerm_resource_group" "rg_log_soc_prd_jpw_01" {
  name     = local.log_soc_prd_jpw_01.resource_group_name
  location = local.log_soc_prd_jpw_01.location
}