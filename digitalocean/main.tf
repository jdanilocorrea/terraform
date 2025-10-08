
locals {
  name_prefix = "${var.name}-cluster"
}
module "vpc" {
  source   = "./modules/vpc"
  name     = "${local.name_prefix}-vpc"
  region   = var.region
  vpc_cidr = var.vpc_cidr
}
module "k8s" {
  source             = "./modules/doks"
  name               = "${local.name_prefix}-cluster"
  region             = var.region
  vpc_uuid           = module.vpc.vpc_id
  kubernetes_version = var.kubernetes_version # substitua pela versão desejada
  tags               = ["${var.project_name}", "k8s"]
  node_pools         = var.node_pools
}