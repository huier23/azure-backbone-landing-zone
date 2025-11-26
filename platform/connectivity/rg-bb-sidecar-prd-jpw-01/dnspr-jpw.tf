# https://registry.terraform.io/modules/Azure/avm-res-network-dnsresolver

locals {
  dnspr_jpw = {
    name        = "dnspr-jpw"
    location    = "japanwest"
    dnspr_in_ip = "10.227.2.4"
  }
}


module "dnspr_jpw" {
  source           = "Azure/avm-res-network-dnsresolver/azurerm"
  version          = "0.8.0"
  enable_telemetry = false

  name                        = local.dnspr_jpw.name
  location                    = local.dnspr_jpw.location
  resource_group_name         = azurerm_resource_group.rg_vnet_sidecar_jpw_01.name
  virtual_network_resource_id = module.vnet_sidecar_jpw_01.resource_id

  inbound_endpoints = {
    inbound_dnspr_jpw = {
      name                         = "inbound-dnspr-jpw"
      subnet_name                  = module.vnet_sidecar_jpw_01.subnets.snet_dnspr_in.name
      private_ip_allocation_method = "Static"
      private_ip_address           = local.dnspr_jpw.dnspr_in_ip
    }
  }

  outbound_endpoints = {
    outbound_dnspr_jpw = {
      name        = "outbound-dnspr-jpw"
      subnet_name = module.vnet_sidecar_jpw_01.subnets.snet_dnspr_out.name
    }
  }
}