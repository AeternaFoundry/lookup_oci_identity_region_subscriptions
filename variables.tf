variable "identity_region_subscriptions_lookup" {
  description = <<EOT
Map of identity_region_subscriptions_lookup, attributes below
Required:
    - tenancy_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    tenancy_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

