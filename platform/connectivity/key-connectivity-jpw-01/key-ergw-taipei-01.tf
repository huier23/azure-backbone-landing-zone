# https://registry.terraform.io/modules/Azure/avm-res-keyvault-vault/azurerm/0.10.2
locals {
  key_connectivity_jpw_01 = {
    name     = "key-connectivity-jpw-01"
    location = "japanwest"
  }
}

resource "azurerm_resource_group" "rg_key_connectivity_jpw_01" {
  location = local.key_connectivity_jpw_01.location
  name     = local.key_connectivity_jpw_01.name
}

module "key_erd_taipei_01" {
  source  = "Azure/avm-res-keyvault-vault/azurerm"
  version = "0.10.2"

  location = local.key_connectivity_jpw_01.location
  name                = "key-erd-taipei-01"
  resource_group_name = local.key_connectivity_jpw_01.name
  tenant_id           = var.tenant_id
  enable_telemetry    = "false"
  public_network_access_enabled = false

  private_endpoints = {
    primary = {
      private_dns_zone_resource_ids = [azurerm_private_dns_zone.privatelink_vaultcore_azure_net.id]
      subnet_resource_id            = module.vnet_connectivity_jpw_01.subnets.snet_private_endpoints_jpw.id
    }
  }

}