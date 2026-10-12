variable "no_code_modules" {
  description = <<EOT
Map of no_code_modules, attributes below
Required:
    - registry_module
Optional:
    - enabled
    - organization
    - version_pin
    - variable_options (block):
        - name (required)
        - options (optional)
        - type (required)
EOT

  type = map(object({
    registry_module = string
    enabled         = optional(bool)
    organization    = optional(string)
    version_pin     = optional(string)
    variable_options = optional(list(object({
      name    = string
      options = optional(list(string))
      type    = string
    })))
  }))
}

