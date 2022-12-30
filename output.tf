#---------------------------------------------------------------
# Outputs
#---------------------------------------------------------------

output "built_in_assingments_subs" {
  value = module.rbac.built_in_assignments_subs
}

output "custom_role_assingments_subs" {
  value = module.rbac.custom_assignments_subs
}

output "built_in_assingments_mgmt_groups" {
  value = module.rbac.built_in_assignments_mgmt_groups
}

output "custom_role_assingments_mgmt_groups" {
  value = module.rbac.custom_assignments_mgmt_groups
}