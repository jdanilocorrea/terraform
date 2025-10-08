output "node_pools_ids" {
  value = [for p in digitalocean_kubernetes_node_pool.pools : p.id]
}
