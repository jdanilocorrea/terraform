terraform {
  required_version = ">= 1.6.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}


# Optional: provider alias for operations em outra conta/region
# provider "digitalocean" {
#   alias = "secondary"
#   token = var.do_token_secondary
# }

# Recomendo usar Terraform Cloud / Enterprise para state remoto:
# backend "remote" {
#   hostname = "app.terraform.io"
#   organization = "sua-org"
#   workspaces { name = "do-k8s" }
# }
