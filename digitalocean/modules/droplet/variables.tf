# variables.tf - Variáveis de entrada para o módulo do Droplet

variable "droplet_name" {
  description = "O nome do Droplet."
  type        = string
}

variable "region" {
  description = "A região onde o Droplet será criado."
  type        = string
}

variable "droplet_size" {
  description = "O tamanho do Droplet (ex: s-1vcpu-1gb)."
  type        = string
}

variable "image_slug" {
  description = "O slug da imagem do sistema operacional (ex: ubuntu-22-04-x64)."
  type        = string
}

variable "ssh_key_id" {
  description = "O ID da chave SSH a ser associada ao Droplet."
  type        = number
}

variable "vpc_uuid" {
  description = "O UUID da VPC onde o Droplet será criado."
  type        = string
  default     = "default-ams3" # Valor padrão baseado na sua imagem
}

variable "project_id" {
  description = "O ID do projeto da DigitalOcean ao qual o Droplet pertence."
  type        = string
}

variable "tags" {
  description = "Tags para o Droplet."
  type        = list(string)
  default     = []
}