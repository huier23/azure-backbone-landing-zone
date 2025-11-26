locals {
  rg_vnet_sidecar_jpw_01 = {
    location            = "japanwest"
    resource_group_name = "rg-bb-sidecar-prd-jpw-01"
  }
}

resource "azurerm_resource_group" "rg_vnet_sidecar_jpw_01" {
  name     = local.rg_vnet_sidecar_jpw_01.resource_group_name
  location = local.rg_vnet_sidecar_jpw_01.location
}
