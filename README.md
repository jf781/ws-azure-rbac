## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rbac"></a> [rbac](#module\_rbac) | app.terraform.io/berlin-packaging-infra/module-rbac/azurerm | 0.1.1 |

## Resources

This will call the 'RBAC' module that will be used to define budgets on the subscriptions listed in the inputs.  You have the option to filter the budget to be based on a particular tag key value pair.   


## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_built_in_role_assignments"></a> [built\_in\_role\_assignments](#input\_built\_in\_role\_assignments) | List of role assignments and their associated scopes | <pre>list(object({<br>    role_assignment_name          = string<br>    scope_type                    = string # mgmt_group or sub<br>    scope_name                    = string # Name of management group or subscription<br>    azuread_principal_object_id   = string<br>  }))</pre> |  no |
| <a name="input_custom_role_assignments"></a> [custom\_role\_assignments](#input\_custom\_role\_assignments) | List of custom role assignments and their associated scopes | <pre>list(object({<br>    role_definition_name          = string<br>    role_definition_description   = string<br>    scope_type                    = string # mgmt_group or sub<br>    scope_name                    = string<br>    azuread_principal_object_id   = string<br>    role_actions                  = list(string)<br>    role_not_actions              = list(string)<br>    assignable_scopes             = list(string)<br>  }))</pre> | no |

## Input Details

There is a single input as show below for the workspace.   
| Variable Object | Object Name | Type | Description | Required |
|-----------------|-------------|------|-------------|:--------:|
| built_in_role_assignments | role_assignment_name | string | The built-in RBAC name.  Example: `Contributor`, `Owner`, `Key Vault Certificates Officer` | Yes, if assigning a built in role |
| built_in_role_assignments | scope_type | string | The resource type that the assignment will be applied to.  Must be `sub` or `mgmt_group` | Yes, if assigning a built in role |
| built_in_role_assignments | scope_name | string | The name of the resource the assignment will be applied to. | Yes, if assigning a built in role |
| built_in_role_assignments | azuread_principal_object_id | string | The `Object ID` of the Azure AD object that you be assigning the permission to. | Yes, if assigning a built in role |
| custom_role_assignments | role_definition_name | string | The name of the custom role definition | Yes, if assigning a custom role |
| custom_role_assignments | role_definition_description | string | A description to add to the custom role definition | Yes, if assigning a custom role |
| custom_role_assignments | scope_type | string | The resource type that the assignment will be applied to.  Must be `sub` or `mgmt_group` | Yes, if assigning a custom role |
| custom_role_assignments | scope_name | string | The name of the resource the assignment will be applied to. | Yes, if assigning a custom role |
| custom_role_assignments | azuread_principal_object_id | string | The `Object ID` of the Azure AD object that you be assigning the permission to. | Yes, if assigning a custom role |
| custom_role_assignments | role_actions | list(string) | The list of actions that the custom role will be able to perform. | Yes, if assigning a custom role |
| custom_role_assignments | role_not_actions | list(string) | The list of actions that the custom role will NOT be able to perform. | Yes, if assigning a custom role |
| custom_role_assignments | assignable_scopes | list(string) | Any additional scopes that the role would need to be applied to | Yes, if assigning a custom role |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_built_in_assingments_mgmt_groups"></a> [built\_in\_assingments\_mgmt\_groups](#output\_built\_in\_assingments\_mgmt\_groups) | n/a |
| <a name="output_built_in_assingments_subs"></a> [built\_in\_assingments\_subs](#output\_built\_in\_assingments\_subs) | n/a |
| <a name="output_custom_role_assingments_mgmt_groups"></a> [custom\_role\_assingments\_mgmt\_groups](#output\_custom\_role\_assingments\_mgmt\_groups) | n/a |
| <a name="output_custom_role_assingments_subs"></a> [custom\_role\_assingments\_subs](#output\_custom\_role\_assingments\_subs) | n/a |
