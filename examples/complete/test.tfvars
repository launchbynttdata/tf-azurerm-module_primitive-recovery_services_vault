resource_names_map = {
  resource_group = {
    name       = "rg"
    max_length = 80
  }
  recovery_services_vault = {
    name       = "rsv"
    max_length = 50
  }
}

# Naming convention variables
logical_product_family  = "launch"
logical_product_service = "backup"
class_env               = "test"
instance_env            = 0
instance_resource       = 0

# Azure region
# location = "eastus"

# Recovery Services Vault configuration
sku                           = "Standard"
public_network_access_enabled = true
immutability                  = "Disabled"
storage_mode_type             = "GeoRedundant"
cross_region_restore_enabled  = false
soft_delete_enabled           = true

# Monitoring
enable_monitoring = true

# Tags
tags = {
  environment = "test"
  terraform   = "true"
  purpose     = "testing"
}
