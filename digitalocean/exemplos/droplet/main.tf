
module "droplet" {
  source = "./modules/droplet"
  name = var.droplet_name
  image = var.droplet_image
  region = var.droplet_region
  size = var.droplet_size
  ssh_key_id = data.digitalocean_ssh_key.ssh_key.id
  }

module "firewall" {
  source     = "./modules/firewall"
  droplet_id = module.droplet.vm_id
}

module "project" {
  source       = "./modules/project"
  project_id  = data.digitalocean_project.selected.id
  resource_urns = [module.droplet.vm_urn]
  # project_name = var.do_project_name
  # resources = [
  #   module.droplet.vm_urn,
  #   module.firewall.firewall_urn
  # ]
}

