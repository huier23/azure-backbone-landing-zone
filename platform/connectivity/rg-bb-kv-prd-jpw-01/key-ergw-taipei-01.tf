# https://registry.terraform.io/modules/Azure/avm-res-keyvault-vault/azurerm/0.10.2
locals {
  key_connectivity_jpw_01 = {
    name     = "key-connectivity-jpw-01"
    location = "japanwest"
  }
}

resource "azurerm_resource_group" "rg_key_connectivity_jpw_01" {
  location = local.key_connectivity_jpw_01.location
  name     = "rg-${local.key_connectivity_jpw_01.name}"
}

# https://registry.terraform.io/modules/Azure/avm-res-keyvault-vault/azurerm/latest
module "key_erd_taipei_01" {
  source  = "Azure/avm-res-keyvault-vault/azurerm"
  version = "0.10.2"

  location                        = local.key_connectivity_jpw_01.location
  name                            = "key-erd-taipei-01"
  resource_group_name             = azurerm_resource_group.rg_key_connectivity_jpw_01.name
  tenant_id                       = var.tenant_id
  sku_name                        = "premium"
  enable_telemetry                = false
  public_network_access_enabled   = false
  enabled_for_deployment          = false
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = false
  legacy_access_policies_enabled  = false
  purge_protection_enabled        = true
  soft_delete_retention_days      = 7

  private_endpoints = {
    primary = {
      private_dns_zone_resource_ids = [var.private_dns_zone_id]
      subnet_resource_id            = var.private_endpoint_subnet_id
    }
  }

}