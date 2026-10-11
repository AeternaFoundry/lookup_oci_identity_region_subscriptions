data "oci_identity_region_subscriptions" "identity_region_subscriptions_lookup" {
  for_each = var.identity_region_subscriptions_lookup

  tenancy_id = each.value.tenancy_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

