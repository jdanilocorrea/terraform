##########################################
# Locals
##########################################
locals {
  name_prefix = "${var.name_cluster}-cluster"
}

##########################################
# VPC
##########################################
module "vpc" {
  source   = "./modules/vpc"
  name     = "${local.name_prefix}-vpc"
  region   = var.region
  vpc_cidr = var.vpc_cidr
}

##########################################
# Kubernetes Cluster (DOKS)
##########################################
module "k8s" {
  source             = "./modules/doks"
  name_cluster       = "${local.name_prefix}-test"
  region             = var.region
  vpc_uuid           = module.vpc.vpc_id
  kubernetes_version = var.kubernetes_version
  tags               = ["${var.project_name}", "k8s"]
  node_pools         = var.node_pools
}
