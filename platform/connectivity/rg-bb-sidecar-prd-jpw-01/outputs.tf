output "snet_kv_id" {
  description = "Resource ID for snet-kv subnet within vnet-sidecar-jpw-01"
  value       = module.vnet_sidecar_jpw_01.subnets["snet_kv"].resource_id
}
