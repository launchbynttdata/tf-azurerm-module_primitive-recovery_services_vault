output "recovery_vault_id" {
  description = "ID of the Recovery Services Vault"
  value       = module.recovery_services_vault.vault_id
}

output "recovery_vault_name" {
  description = "Name of the Recovery Services Vault"
  value       = module.recovery_services_vault.vault_name
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = module.resource_group.name
}
