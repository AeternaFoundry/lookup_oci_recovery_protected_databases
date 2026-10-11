data "oci_recovery_protected_databases" "recovery_protected_databases_lookup" {
  for_each = var.recovery_protected_databases_lookup

  compartment_id             = each.value.compartment_id
  display_name               = each.value.display_name
  protection_policy_id       = each.value.protection_policy_id
  recovery_service_subnet_id = each.value.recovery_service_subnet_id
  state                      = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

