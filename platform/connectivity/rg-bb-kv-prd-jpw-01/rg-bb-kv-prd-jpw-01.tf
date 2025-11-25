# https://registry.terraform.io/modules/Azure/avm-res-keyvault-vault/azurerm/0.10.2
locals {
  kv_prd_jpw_01 = {
    resource_group_name = "rg-bb-kv-prd-jpw-01"
    location            = "japanwest"
  }
}

resource "azurerm_resource_group" "rg_kv_prd_jpw_01" {
  location = local.kv_prd_jpw_01.location
  name     = local.kv_prd_jpw_01.resource_group_name
}