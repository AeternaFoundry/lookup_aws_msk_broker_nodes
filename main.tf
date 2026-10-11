data "aws_msk_broker_nodes" "msk_broker_nodes_lookup" {
  for_each = var.msk_broker_nodes_lookup

  cluster_arn = each.value.cluster_arn
  region      = each.value.region
}

