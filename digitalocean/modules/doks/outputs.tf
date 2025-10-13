output "cluster_id" {
  value = digitalocean_kubernetes_cluster.this.id
}

output "cluster_urn" {
  description = "URN do cluster para associar ao projeto"
  value       = digitalocean_kubernetes_cluster.this.urn
}

output "kubeconfig_file" {
  value = local_file.kubeconfig.filename
}

output "kubeconfig" {
  value     = data.digitalocean_kubernetes_cluster.this_data.kube_config[0].raw_config
  sensitive = true
}


output "endpoint" {
  description = "Endpoint de API do cluster"
  value       = digitalocean_kubernetes_cluster.this.endpoint
}

output "region" {
  description = "Região do cluster"
  value       = digitalocean_kubernetes_cluster.this.region
}

