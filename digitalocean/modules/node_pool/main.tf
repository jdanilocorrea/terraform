# terraform {
#   required_version = ">= 1.6.0"

#   required_providers {
#     digitalocean = {
#       source  = "digitalocean/digitalocean"
#       version = "~> 2.0"
#     }
#   }
# }

resource "digitalocean_kubernetes_node_pool" "pools" {
  for_each = { for p in var.node_pools : p.name => p }

  cluster_id = var.cluster_id
  name       = each.value.name
  size       = each.value.size
  node_count = each.value.count
  tags       = each.value.tags
  auto_scale = false
}
