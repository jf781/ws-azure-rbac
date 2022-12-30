#---------------------------------------------------------------
# Main module
#---------------------------------------------------------------

module "rbac" {
  source                      = "app.terraform.io/berlin-packaging-infra/module-rbac/azurerm"
  # version                     = "0.1.1"
  built_in_role_assignments   = var.built_in_role_assignments
  custom_role_assignments     = var.custom_role_assignments
}

