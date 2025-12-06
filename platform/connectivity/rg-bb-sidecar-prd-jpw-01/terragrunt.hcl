include "root" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "."
}

# 定義依賴關係
dependency "security_log_soc_prd_jpw_01" {
  config_path = "../../security/rg-bb-soc-prd-jpw-01" # 指向 security/rg-bb-soc-prd-jpw-01 的相對路徑

  # (選用) 設定 mock_outputs，這在尚未部署 log-soc-prd-jpw-01 就要跑 plan 時很重要
  mock_outputs = {
    log_soc_prd_jpw_01_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.OperationalInsights/workspaces/mock-log-soc-prd-jpw-01"
  }
  mock_outputs_allowed_terraform_commands = ["output", "validate", "plan"]
}

# dependency "private_dns_zones_prd_global_01" {
#   config_path = "../rg-bb-private-dns-zones-prd-global-01"

#   mock_outputs = {
#     privatelink_agentsvc_azure_automation_net_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.Network/privateDnsZones/privatelink-agentsvc-azure-automation-net"
#     privatelink_blob_core_windows_net_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.Network/privateDnsZones/privatelink-blob-core-windows-net"
#     privatelink_monitor_azure_com_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.Network/privateDnsZones/privatelink-monitor-azure-com"
#     privatelink_ods_opinsights_azure_com_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.Network/privateDnsZones/privatelink-ods-opinsights-azure-com"
#     privatelink_oms_opinsights_azure_com_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mock-rg/providers/Microsoft.Network/privateDnsZones/privatelink-oms-opinsights-azure-com"
#   }
#   mock_outputs_allowed_terraform_commands = ["output", "validate", "plan"]
# }

inputs = {
  subscription_id                = include.root.locals.merged_global_vars.subscription_connectivity_id
  log_soc_prd_jpw_01_workspace_id = dependency.security_log_soc_prd_jpw_01.outputs.log_soc_prd_jpw_01_workspace_id

  # privatelink_monitor_azure_com_id          = dependency.private_dns_zones_prd_global_01.outputs.privatelink_monitor_azure_com_id
  # privatelink_oms_opinsights_azure_com_id   = dependency.private_dns_zones_prd_global_01.outputs.privatelink_oms_opinsights_azure_com_id
  # privatelink_ods_opinsights_azure_com_id   = dependency.private_dns_zones_prd_global_01.outputs.privatelink_ods_opinsights_azure_com_id
  # privatelink_agentsvc_azure_automation_net_id = dependency.private_dns_zones_prd_global_01.outputs.privatelink_agentsvc_azure_automation_net_id
  # privatelink_blob_core_windows_net_id      = dependency.private_dns_zones_prd_global_01.outputs.privatelink_blob_core_windows_net_id
}
