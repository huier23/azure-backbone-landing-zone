output "privatelink_vaultcore_azure_net_id" {
  description = "Resource ID for privatelink.vaultcore.azure.net private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_vaultcore_azure_net.id
}

output "privatelink_monitor_azure_com_id" {
  description = "Resource ID for privatelink.monitor.azure.com private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_monitor_azure_com.id
}

output "privatelink_oms_opinsights_azure_com_id" {
  description = "Resource ID for privatelink.oms.opinsights.azure.com private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_oms_opinsights_azure_com.id
}

output "privatelink_ods_opinsights_azure_com_id" {
  description = "Resource ID for privatelink.ods.opinsights.azure.com private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_ods_opinsights_azure_com.id
}
output "privatelink_agentsvc_azure_automation_net_id" {
  description = "Resource ID for privatelink.agentsvc.azure-automation.net private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_agentsvc_azure_automation_net.id
}

output "privatelink_blob_core_windows_net_id" {
  description = "Resource ID for privatelink.blob.core.windows.net private DNS zone"
  value       = azurerm_private_dns_zone.privatelink_blob_core_windows_net.id
}
