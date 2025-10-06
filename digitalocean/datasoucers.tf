data "digitalocean_ssh_key" "ssh_key" {
  name = var.ssh_key_name
}

data "digitalocean_project" "selected" {
  name = var.do_project_name
}

# data "digitalocean_vpc" "default_ams3" {
#  name   = "default-ams3"
#  region = "ams3"
# }
