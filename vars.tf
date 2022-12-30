#---------------------------------------------------------------
# Variables for managed resources
#---------------------------------------------------------------

variable "built_in_role_assignments" {
  description = "List of role assignments and their associated scopes"
  type        = list(object({
    role_assignment_name          = string
    scope_type                    = string # mgmt_group or sub
    scope_name                    = string # Name of management group or subscription
    azuread_principal_object_id   = string
  }))
  default = [
    ## mg-berlin-root
    {
      role_assignment_name          = "Management Group Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    {
      role_assignment_name          = "Resource Policy Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    {
      role_assignment_name          = "Cost Management Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    {
      role_assignment_name          = "Monitoring Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    {
      role_assignment_name          = "Virtual Machine Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    {
      role_assignment_name          = "Network Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-example-root" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    ## mg-platform
    {
      role_assignment_name          = "Owner"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-platform" # Name of management group or subscription
      azuread_principal_object_id   = "b95092ad-5f67-47ae-9320-f6d4e7f29dc8"
    },
    {
      role_assignment_name          = "Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-platform" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    ## mg-workload-prod
    {
      role_assignment_name          = "Owner"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-workload-prod" # Name of management group or subscription
      azuread_principal_object_id   = "b95092ad-5f67-47ae-9320-f6d4e7f29dc8"
    },
    {
      role_assignment_name          = "Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-workload-prod" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    },
    ## mg-workload-nonprod
    {
      role_assignment_name          = "Owner"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-workload-nonprod" # Name of management group or subscription
      azuread_principal_object_id   = "b95092ad-5f67-47ae-9320-f6d4e7f29dc8"
    },
    {
      role_assignment_name          = "Contributor"
      scope_type                    = "mgmt_group" # mgmt_group or sub
      scope_name                    = "mg-workload-nonprod" # Name of management group or subscription
      azuread_principal_object_id   = "3e7e73d3-bde5-428b-9115-6c097bb8a9dc"
    }
  ]
}

variable "custom_role_assignments" {
  description = "List of custom role assignments and their associated scopes"
  type        = list(object({
    role_definition_name          = string
    role_definition_description   = string
    scope_type                    = string # mgmt_group or sub
    scope_name                    = string
    azuread_principal_object_id   = string
    role_actions                  = list(string)
    role_not_actions              = list(string)
    assignable_scopes             = list(string)
  }))
  default = [
  ]
}