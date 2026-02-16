variable "name" {
  description = "Vault name"
  type        = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "sku" {
  type    = string
  default = "Standard"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "immutability" {
  type    = string
  default = null
}

variable "storage_mode_type" {
  type    = string
  default = "GeoRedundant"
}

variable "cross_region_restore_enabled" {
  type    = bool
  default = false
}

variable "soft_delete_enabled" {
  type    = bool
  default = false
}

variable "classic_vmware_replication_enabled" {
  type    = bool
  default = null
}

variable "identity" {
  type = object({
    type         = string
    identity_ids = optional(list(string))
  })
  default = null
}

variable "encryption" {
  type = object({
    key_id                            = string
    infrastructure_encryption_enabled = bool
    user_assigned_identity_id         = optional(string)
    use_system_assigned_identity      = optional(bool, true)
  })
  default = null
}

variable "monitoring" {
  type    = map(any)
  default = null
}
