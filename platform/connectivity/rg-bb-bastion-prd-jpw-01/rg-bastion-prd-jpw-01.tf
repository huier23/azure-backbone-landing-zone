resource "azurerm_resource_group" "rg_bb_bastion_prd_jpw_01" {
  location = local.bastionhost_prd_jpw_01.location
  name     = local.bastionhost_prd_jpw_01.resource_group_name
}