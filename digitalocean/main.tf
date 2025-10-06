# Arquivo: main.tf
# Local: pasta_do_seu_projeto/digitalocean/main.tf

resource "digitalocean_droplet" "vm_labs" {
  image    = var.droplet_image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  # 3. Associação do Projeto (ITEM FALTANTE CRUCIAL)
  # project_id = data.digitalocean_project.selected.id 
  # 4. Boa Prática: Imutabilidade de Tags/Rotulagem
  tags       = ["lab", "droplet-managed-by-terraform"]
}