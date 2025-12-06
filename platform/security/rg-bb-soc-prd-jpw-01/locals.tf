locals {
  log_soc_prd_jpw_01 = {
    name                  = "log-soc-prd-jpw-01"
    resource_group_name   = "rg-bb-log-soc-prd-jpw-01"
    location              = "${var.primary_location}"
    log_sku               = "PerGB2018"
    log_retention_in_days = 30 # 30 ~ 730
  }
}
