terraform {
  required_version = ">= 1.0" # Use a sintaxe correta para a versão

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.8" # Sempre defina uma versão para garantir a reprodutibilidade
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}
