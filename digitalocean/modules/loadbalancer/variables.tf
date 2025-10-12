variable "name" { type = string }
variable "region" { type = string }
variable "droplet_ids" {
  type    = list(number)
  default = []
}
