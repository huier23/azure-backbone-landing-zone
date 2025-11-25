variable "primary_location" {
  description = "請填寫主要部署區域，例如：japanwest"
  type        = string
}

variable "subscription_id" {
  description = "請填寫 Azure 訂閱 ID"
  type        = string
}

variable "afwp_azure_jpw_prod_01_id" {
  description = "來自 connectivity/rg-bb-afwp-prd-global-01 的 Firewall Policy Resource ID"
  type        = string
}
