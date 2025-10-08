resource "digitalocean_project_resources" "this" {
  project = var.project_id
  resources = var.resource_urns
}


# resource "digitalocean_project_resources" "project" {
#   project = data.digitalocean_project.selected.id

#   resources = [
#     digitalocean_droplet.this.urn,
#     digitalocean_firewall.this.urn
#   ]

#   depends_on = [
#     digitalocean_droplet.this,
#     digitalocean_firewall.this
#   ]
# }