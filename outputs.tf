output "vault_id" {
  value = try(azurerm_recovery_services_vault.recovery_services_vault[0].id, null)
}

output "vault_name" {
  value = try(azurerm_recovery_services_vault.recovery_services_vault[0].name, null)
}
