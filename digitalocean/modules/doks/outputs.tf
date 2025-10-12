output "cluster_id" {
  value = digitalocean_kubernetes_cluster.this.id
}

output "kubeconfig_file" {
  value = local_file.kubeconfig.filename
}

output "kubeconfig" {
  value     = data.digitalocean_kubernetes_cluster.this_data.kube_config[0].raw_config
  sensitive = true
}
