# main.tf - Instancia o módulo do Droplet para o ambiente de dev

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  # Configuração do backend remoto para o state file
  backend "s3" {
    bucket = "terraform-state-dev-do"
    key    = "droplet/dev.tfstate"
    region = "us-east-1" # Exemplo: S3 Backend na AWS
    # Para evitar conflitos de state, use um lock com DynamoDB
    # dynamodb_table = "terraform-state-lock"
  }
}

# Configura o provedor DigitalOcean
provider "digitalocean" {
  token = var.do_token
}

# Busca a chave SSH pelo nome
data "digitalocean_ssh_key" "my_key" {
  name = "access-jdct-aveli-u-1" # Substitua pelo nome real da sua chave
}

# Instancia o módulo do Droplet
module "droplet_dev" {
  source = "../../modules/droplet" # Caminho relativo para o módulo

  droplet_name   = var.droplet_name
  region         = var.region
  droplet_size   = var.droplet_size
  image_slug     = "ubuntu-24-04-x64" # Ubuntu 24.04 (LTS)
  ssh_key_id     = data.digitalocean_ssh_key.my_key.id
  project_id     = var.project_id
  tags           = ["dev", "webserver"]
}