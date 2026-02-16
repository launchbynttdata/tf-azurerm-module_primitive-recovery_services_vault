resource "azurerm_recovery_services_vault" "recovery_services_vault" {

  name                = local.vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = var.tags

  public_network_access_enabled      = var.public_network_access_enabled
  immutability                       = var.immutability
  storage_mode_type                  = var.storage_mode_type
  cross_region_restore_enabled       = var.cross_region_restore_enabled
  soft_delete_enabled                = var.soft_delete_enabled
  classic_vmware_replication_enabled = var.classic_vmware_replication_enabled

  # Identity
  dynamic "identity" {
    for_each = var.identity == null ? [] : [var.identity]

    content {
      type         = identity.value.type
      identity_ids = identity.value.identity_ids
    }
  }

  # Encryption
  dynamic "encryption" {
    for_each = var.encryption == null ? [] : [var.encryption]

    content {
      key_id                            = encryption.value.key_id
      infrastructure_encryption_enabled = encryption.value.infrastructure_encryption_enabled
      user_assigned_identity_id         = encryption.value.user_assigned_identity_id
      use_system_assigned_identity      = encryption.value.use_system_assigned_identity
    }
  }

  # Monitoring
  dynamic "monitoring" {
    for_each = var.monitoring == null ? [] : [var.monitoring]

    content {
      alerts_for_all_job_failures_enabled = lookup(monitoring.value, "alerts_for_all_job_failures_enabled", true)

      alerts_for_critical_operation_failures_enabled = lookup(monitoring.value, "alerts_for_critical_operation_failures_enabled", true)
    }
  }
}

