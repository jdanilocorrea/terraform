variable "cluster_id" { type = string }
variable "node_pools" {
  type = list(object({
    name  = string
    size  = string
    count = number
    tags  = optional(list(string), [])
  }))
}
