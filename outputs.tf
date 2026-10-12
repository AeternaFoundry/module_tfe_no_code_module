output "no_code_modules_id" {
  description = "Map of id values across all no_code_modules, keyed the same as var.no_code_modules except keys with no id are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "no_code_modules_enabled" {
  description = "Map of enabled values across all no_code_modules, keyed the same as var.no_code_modules except keys with no enabled are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.enabled if v.enabled != null }
}
output "no_code_modules_organization" {
  description = "Map of organization values across all no_code_modules, keyed the same as var.no_code_modules except keys with no organization are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "no_code_modules_registry_module" {
  description = "Map of registry_module values across all no_code_modules, keyed the same as var.no_code_modules except keys with no registry_module are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.registry_module if v.registry_module != null && length(v.registry_module) > 0 }
}
output "no_code_modules_variable_options" {
  description = "Map of variable_options values across all no_code_modules, keyed the same as var.no_code_modules except keys with no variable_options are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.variable_options if v.variable_options != null && length(v.variable_options) > 0 }
}
output "no_code_modules_version_pin" {
  description = "Map of version_pin values across all no_code_modules, keyed the same as var.no_code_modules except keys with no version_pin are omitted"
  value       = { for k, v in tfe_no_code_module.no_code_modules : k => v.version_pin if v.version_pin != null && length(v.version_pin) > 0 }
}

