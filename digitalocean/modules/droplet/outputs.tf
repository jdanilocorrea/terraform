output "ipv4_address" {
  value = digitalocean_droplet.this.ipv4_address
}

output "vm_id" {
  value = digitalocean_droplet.this.id
}

output "vm_urn" {
  value = digitalocean_droplet.this.urn
}
