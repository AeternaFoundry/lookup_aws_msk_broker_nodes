output "msk_broker_nodes_lookup_id" {
  description = "Map of id values across all msk_broker_nodes_lookup, keyed the same as var.msk_broker_nodes_lookup"
  value       = { for k, v in data.aws_msk_broker_nodes.msk_broker_nodes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "msk_broker_nodes_lookup_cluster_arn" {
  description = "Map of cluster_arn values across all msk_broker_nodes_lookup, keyed the same as var.msk_broker_nodes_lookup"
  value       = { for k, v in data.aws_msk_broker_nodes.msk_broker_nodes_lookup : k => v.cluster_arn if v.cluster_arn != null && length(v.cluster_arn) > 0 }
}
output "msk_broker_nodes_lookup_node_info_list" {
  description = "Map of node_info_list values across all msk_broker_nodes_lookup, keyed the same as var.msk_broker_nodes_lookup"
  value       = { for k, v in data.aws_msk_broker_nodes.msk_broker_nodes_lookup : k => v.node_info_list if v.node_info_list != null && length(v.node_info_list) > 0 }
}
output "msk_broker_nodes_lookup_region" {
  description = "Map of region values across all msk_broker_nodes_lookup, keyed the same as var.msk_broker_nodes_lookup"
  value       = { for k, v in data.aws_msk_broker_nodes.msk_broker_nodes_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

