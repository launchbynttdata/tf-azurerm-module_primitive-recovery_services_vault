output "resource_group_name" {
  description = "Resource group name"
  value       = module.resource_group.name
}

output "recovery_services_vault_name" {
  description = "Recovery Services Vault name"
  value       = module.recovery_services_vault.vault_name
}

output "recovery_services_vault_id" {
  description = "Recovery Services Vault ID"
  value       = module.recovery_services_vault.vault_id
}
