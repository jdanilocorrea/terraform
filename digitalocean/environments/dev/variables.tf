# environments/dev/variables.tf

variable "do_token" {
  description = "Token de autenticação da DigitalOcean."
  type        = string
  sensitive   = true # Isso ajuda a evitar que o valor seja impresso em logs.
}

variable "droplet_name" {
  description = "O nome do Droplet."
  type        = string
}

variable "region" {
  description = "A região onde o Droplet será criado."
  type        = string
}

variable "droplet_size" {
  description = "O tamanho do Droplet."
  type        = string
}

variable "project_id" {
  description = "O ID do projeto da DigitalOcean ao qual o Droplet pertence."
  type        = string
}