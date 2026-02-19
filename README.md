# tf-azurerm-module_primitive-recovery_services_vault
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.117 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.117.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_recovery_services_vault.recovery_services_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Create vault | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Vault name | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | `"Standard"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_immutability"></a> [immutability](#input\_immutability) | n/a | `string` | `null` | no |
| <a name="input_storage_mode_type"></a> [storage\_mode\_type](#input\_storage\_mode\_type) | n/a | `string` | `"GeoRedundant"` | no |
| <a name="input_cross_region_restore_enabled"></a> [cross\_region\_restore\_enabled](#input\_cross\_region\_restore\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_soft_delete_enabled"></a> [soft\_delete\_enabled](#input\_soft\_delete\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_classic_vmware_replication_enabled"></a> [classic\_vmware\_replication\_enabled](#input\_classic\_vmware\_replication\_enabled) | n/a | `bool` | `null` | no |
| <a name="input_identity"></a> [identity](#input\_identity) | n/a | <pre>object({<br/>    type         = string<br/>    identity_ids = optional(list(string))<br/>  })</pre> | `null` | no |
| <a name="input_encryption"></a> [encryption](#input\_encryption) | n/a | <pre>object({<br/>    key_id                            = string<br/>    infrastructure_encryption_enabled = bool<br/>    user_assigned_identity_id         = optional(string)<br/>    use_system_assigned_identity      = optional(bool, true)<br/>  })</pre> | `null` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | n/a | `map(any)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault_id"></a> [vault\_id](#output\_vault\_id) | n/a |
| <a name="output_vault_name"></a> [vault\_name](#output\_vault\_name) | n/a |
<!-- END_TF_DOCS -->
