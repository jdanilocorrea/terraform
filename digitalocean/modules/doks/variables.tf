variable "name_cluster" { type = string }
variable "region" { type = string }
variable "vpc_uuid" { type = string }
variable "kubernetes_version" { type = string }
variable "tags" {
  type    = list(string)
  default = []
}
variable "node_pools" {
  type = list(object({
    name  = string
    size  = string
    count = number
    tags  = optional(list(string), [])
  }))
  default = []
}

variable "default_node_pool_size" {
  type    = string
  default = "s-1vcpu-2gb"
}
variable "default_node_pool_count" {
  type    = number
  default = 1
}
