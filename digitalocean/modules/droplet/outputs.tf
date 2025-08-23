# outputs.tf - Valores de saída do módulo

output "droplet_ip_address" {
  description = "O endereço IP público do Droplet."
  value       = digitalocean_droplet.main.ipv4_address
}

output "droplet_urn" {
  description = "O URN do Droplet criado."
  value       = digitalocean_droplet.main.urn
}