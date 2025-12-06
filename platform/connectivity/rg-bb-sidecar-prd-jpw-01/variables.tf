variable "primary_location" {
  description = "請填寫主要部署區域，例如：japanwest"
  type        = string
}

variable "subscription_id" {
  description = "請填寫 Azure 訂閱 ID"
  type        = string
}

variable "log_soc_prd_jpw_01_workspace_id" {
  description = "log-soc-prd-jpw-01 Log Analytics Workspace Resource ID"
  type        = string
}

# variable "privatelink_monitor_azure_com_id" {
#   description = "Private DNS Zone ID for privatelink-monitor-azure-com"
#   type        = string
# }

# variable "privatelink_oms_opinsights_azure_com_id" {
#   description = "Private DNS Zone ID for privatelink-oms-opinsights-azure-com"
#   type        = string
# }

# variable "privatelink_ods_opinsights_azure_com_id" {
#   description = "Private DNS Zone ID for privatelink-ods-opinsights-azure-com"
#   type        = string
# }

# variable "privatelink_agentsvc_azure_automation_net_id" {
#   description = "Private DNS Zone ID for privatelink-agentsvc-azure-automation-net"
#   type        = string
# }

# variable "privatelink_blob_core_windows_net_id" {
#   description = "Private DNS Zone ID for privatelink-blob-core-windows-net"
#   type        = string
# }