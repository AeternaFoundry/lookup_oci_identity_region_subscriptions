output "identity_region_subscriptions_lookup_id" {
  description = "Map of id values across all identity_region_subscriptions_lookup, keyed the same as var.identity_region_subscriptions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_region_subscriptions.identity_region_subscriptions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_region_subscriptions_lookup_filter" {
  description = "Map of filter values across all identity_region_subscriptions_lookup, keyed the same as var.identity_region_subscriptions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_region_subscriptions.identity_region_subscriptions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_region_subscriptions_lookup_region_subscriptions" {
  description = "Map of region_subscriptions values across all identity_region_subscriptions_lookup, keyed the same as var.identity_region_subscriptions_lookup except keys with no region_subscriptions are omitted"
  value       = { for k, v in data.oci_identity_region_subscriptions.identity_region_subscriptions_lookup : k => v.region_subscriptions if v.region_subscriptions != null && length(v.region_subscriptions) > 0 }
}
output "identity_region_subscriptions_lookup_tenancy_id" {
  description = "Map of tenancy_id values across all identity_region_subscriptions_lookup, keyed the same as var.identity_region_subscriptions_lookup except keys with no tenancy_id are omitted"
  value       = { for k, v in data.oci_identity_region_subscriptions.identity_region_subscriptions_lookup : k => v.tenancy_id if v.tenancy_id != null && length(v.tenancy_id) > 0 }
}

