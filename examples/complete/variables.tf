variable "resource_names_map" {
  description = "A map of key to resource_name that will be used by tf-launch-module_library-resource_name to generate resource names"
  type = map(object({
    name       = string
    max_length = optional(number, 60)
  }))

  default = {
    resource_group = {
      name       = "rg"
      max_length = 80
    }
    recovery_services_vault = {
      name       = "rsv"
      max_length = 50
    }
  }
}

variable "logical_product_family" {
  type        = string
  description = "Logical product family name"
  default     = "launch"
}

variable "logical_product_service" {
  type        = string
  description = "Logical product service name"
  default     = "backup"
}

variable "class_env" {
  type        = string
  description = "Environment classification"
  default     = "test"
}

variable "instance_env" {
  type        = number
  description = "Environment instance number"
  default     = 0
}

variable "instance_resource" {
  type        = number
  description = "Resource instance number"
  default     = 0
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "eastus"
}

variable "sku" {
  type        = string
  description = "SKU for Recovery Services Vault"
  default     = "Standard"
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Enable public network access"
  default     = true
}

variable "immutability" {
  type        = string
  description = "Immutability setting"
  default     = "Disabled"
}

variable "storage_mode_type" {
  type        = string
  description = "Storage mode type"
  default     = "GeoRedundant"
}

variable "cross_region_restore_enabled" {
  type        = bool
  description = "Enable cross region restore"
  default     = false
}

variable "soft_delete_enabled" {
  type        = bool
  description = "Enable soft delete"
  default     = false
}


variable "enable_monitoring" {
  type        = bool
  description = "Enable monitoring alerts"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default = {
    environment = "test"
    terraform   = "true"
  }
}
