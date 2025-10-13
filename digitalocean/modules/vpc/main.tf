terraform {
  required_version = ">= 1.6.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
resource "digitalocean_vpc" "this" {
  name        = var.name
  region      = var.region
  ip_range    = var.vpc_cidr
  description = "VPC for ${var.name}"
}


