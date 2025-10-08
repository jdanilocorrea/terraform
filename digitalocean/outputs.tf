output "kubeconfig" {
  description = "Kubeconfig do cluster (conteúdo sensível). Prefer usar output sensível e armazenar externamente."
  value       = module.k8s_cluster.kubeconfig
  sensitive   = true
}

output "cluster_id" {
  value = module.k8s_cluster.cluster_id
}
