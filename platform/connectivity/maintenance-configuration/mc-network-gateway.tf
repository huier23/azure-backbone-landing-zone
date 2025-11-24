locals {
  maintenance_config = {
    name     = "maintenance-config"
    location = "japanwest"
  }
}

resource "azurerm_resource_group" "rg_maintenance_config" {
  name     = "rg-${local.maintenance_config.name}"
  location = local.maintenance_config.location
}

resource "azurerm_maintenance_configuration" "mc_network_gateway" {
  name                = "mc-network-gateway"
  resource_group_name = azurerm_resource_group.rg_maintenance_config.name
  location            = azurerm_resource_group.rg_maintenance_config.location
  scope               = "Extension"
  visibility          = "Custom"
  window {
    start_date_time = "2025-11-24 23:00"
    # expiration_date_time = ""
    duration    = "05:00"
    time_zone   = "Taipei Standard Time"
    recur_every = "Monthly"
  }
}
