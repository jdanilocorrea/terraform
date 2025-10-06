variable "do_token" {
  type        = string
  description = "Token da API da Digital Ocean"
  sensitive   = true
}

variable "droplet_image" {
  type        = string
  description = "A imagem do OS para o Droplet (slug)."
  default = "ubuntu-24-04-x64" 
}

variable "droplet_name" {
  type        = string
  description = "O hostname do Droplet."
  default = "vm-labs"
  #default = "ubuntu-s-1vcpu-512mb-10gb-nyc3-01" 
}

variable "droplet_region" {
  type        = string
  description = "A região do Datacenter."
  default = "nyc3" 
}

variable "droplet_size" {
  type        = string
  description = "O slug do tamanho/plano do Droplet."
  # Plano de $4/mês (1vCPU, 512MB RAM, 10GB SSD)
  default = "s-1vcpu-512mb-10gb" 
}

variable "do_project_name" {
  type        = string
  description = "Nome do projeto DigitalOcean para associar o Droplet."
  # Projeto selecionado na tela "Finalize Details"
  default = "jdct-k8s-labs" # cd795063-fc66-44bb-b58b-de6b7af77537
}

variable "ssh_key_name" {
  type        = string
  description = "Nome da chave SSH registrada na DigitalOcean (fingerprint ou nome)."
  default     = "jdcor-phn16"
}
