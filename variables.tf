variable "recovery_protected_databases_lookup" {
  description = <<EOT
Map of recovery_protected_databases_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - protection_policy_id
    - recovery_service_subnet_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id             = optional(string)
    display_name               = optional(string)
    protection_policy_id       = optional(string)
    recovery_service_subnet_id = optional(string)
    state                      = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

