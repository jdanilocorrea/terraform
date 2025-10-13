output "vpc_id" {
  description = "UUID da VPC criada"
  value       = digitalocean_vpc.this.id
}

output "vpc_urn" {
  description = "URN da VPC para associar ao projeto"
  value       = digitalocean_vpc.this.urn
}