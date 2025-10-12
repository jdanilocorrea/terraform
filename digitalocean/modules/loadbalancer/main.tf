resource "digitalocean_loadbalancer" "this" {
  name   = var.name
  region = var.region

  forwarding_rule {
    entry_port      = 80
    entry_protocol  = "http"
    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    protocol               = "http"
    port                   = 80
    path                   = "/healthz"
    check_interval_seconds = 10
  }

  droplet_ids = var.droplet_ids
}

output "lb_id" { value = digitalocean_loadbalancer.this.id }
output "ip" { value = digitalocean_loadbalancer.this.ip }
