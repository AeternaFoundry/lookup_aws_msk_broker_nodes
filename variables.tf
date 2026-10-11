variable "msk_broker_nodes_lookup" {
  description = <<EOT
Map of msk_broker_nodes_lookup, attributes below
Required:
    - cluster_arn
Optional:
    - region
EOT

  type = map(object({
    cluster_arn = string
    region      = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

