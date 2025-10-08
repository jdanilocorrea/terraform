# Este módulo apenas reexporta provider settings se necessário.
# Mantive simples para centralizar configurações do provider.
variable "do_token" {
  type      = string
  sensitive = true
}

provider "digitalocean" {
  token = var.do_token
}
