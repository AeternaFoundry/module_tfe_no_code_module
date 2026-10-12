resource "tfe_no_code_module" "no_code_modules" {
  for_each = var.no_code_modules

  registry_module = each.value.registry_module
  enabled         = each.value.enabled
  organization    = each.value.organization
  version_pin     = each.value.version_pin

  dynamic "variable_options" {
    for_each = each.value.variable_options != null ? each.value.variable_options : []
    content {
      name    = variable_options.value.name
      options = variable_options.value.options
      type    = variable_options.value.type
    }
  }
}

