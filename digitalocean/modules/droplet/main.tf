# main.tf - Define o recurso do Droplet

# Cria um Droplet
resource "digitalocean_droplet" "main" {
  image              = var.image_slug
  name               = var.droplet_name
  region             = var.region
  size               = var.droplet_size
  ssh_keys           = [var.ssh_key_id]
  vpc_uuid           = var.vpc_uuid
  project_id         = var.project_id
  tags               = var.tags
  monitoring         = true # Ativa o monitoramento conforme a imagem 2
  ipv6               = true
}

# Adiciona o Droplet a um projeto (boa prática para organização)
resource "digitalocean_project_resources" "droplet" {
  project_id = var.project_id
  resources = [
    digitalocean_droplet.main.urn
  ]
}