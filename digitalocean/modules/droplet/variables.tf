variable "name" { type = string }
variable "image" { type = string }
variable "region" { type = string }
variable "size" { type = string }
variable "ssh_key_id" { type = string }
variable "tags" {
  type    = list(string)
  default = []
}


