# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_map

resource "azurerm_route_map" "routemap_empty" {
  name           = "routemap-empty"
  virtual_hub_id = azurerm_virtual_hub.vhub_azure_jpw_prd_01.id
}
