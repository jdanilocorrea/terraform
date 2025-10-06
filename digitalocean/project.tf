resource "digitalocean_project_resources" "project" {
  project = data.digitalocean_project.selected.id

  resources = [
    digitalocean_droplet.vm_labs.urn,
    # digitalocean_firewall.firewall_labs.urn
  ]

  depends_on = [
    digitalocean_droplet.vm_labs,
    # digitalocean_firewall.firewall_labs
  ]
}
