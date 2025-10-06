output "droplet_ip" {
  value = digitalocean_droplet.vm_labs.ipv4_address
}
