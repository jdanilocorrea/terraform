terraform {
  required_version = ">= 1.6.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
resource "digitalocean_kubernetes_cluster" "this" {
  name     = var.name
  region   = var.region
  version  = var.kubernetes_version
  vpc_uuid = var.vpc_uuid
  tags     = var.tags

  # Node pool mínimo obrigatório
  node_pool {
    name       = "default-pool"
    size       = var.default_node_pool_size
    node_count = var.default_node_pool_count
    tags       = ["default"]
  }

  auto_upgrade = true
  maintenance_policy {
    start_time = "02:00"
    day        = "sunday"
  }
}

# Node pools adicionais via módulo
module "node_pools" {
  source     = "../node_pool"
  cluster_id = digitalocean_kubernetes_cluster.this.id
  node_pools = var.node_pools
}

# Data para kubeconfig
data "digitalocean_kubernetes_cluster" "this_data" {
  name       = digitalocean_kubernetes_cluster.this.name
  depends_on = [digitalocean_kubernetes_cluster.this]
}

resource "local_file" "kubeconfig" {
  content         = data.digitalocean_kubernetes_cluster.this_data.kube_config[0].raw_kube_config
  filename        = "${path.module}/kubeconfig.yaml"
  file_permission = "0600"
}
