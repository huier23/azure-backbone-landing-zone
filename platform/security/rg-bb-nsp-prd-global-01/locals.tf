locals {
  nsp_prd_global_01 = {
    name                = "nsp-prd-global-01"
    resource_group_name = "rg-bb-nsp-prd-global-01"
    location            = "${var.primary_location}"
  }
}