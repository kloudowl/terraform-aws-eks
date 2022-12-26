terraform {
  backend "s3" {
    bucket         = "illumidesk-terraform-state-backend"
    key            = "state/illumidesk-terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "alias/illumidesk-terraform-bucket-key"
    dynamodb_table = "terraform-state-lock"
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}

module "state" {
  source               = "./modules/state"
  aws_region_for_state = var.aws_region_for_state
}

module "networking" {
  source  = "./modules/networking"

  vpc_name = local.vpc_name
  vpc_cidr = local.vpc_cidr
  azs  = local.azs

  tags = local.tags
}

module "eks" {
  source                 = "./modules/eks"
  aws_region_for_cluster = var.aws_region_for_cluster
  vpc_name           = local.vpc_name
  aws_eks_cluster_name   = local.aws_eks_cluster_name
  control_plane_subnet_ids = module.networking.intra_subnets
  subnet_ids = module.networking.private_subnets
  environment = var.environment
  instance_type_for_node_group_1 = var.instance_type_for_node_group_1
  instance_type_for_node_group_2 = var.instance_type_for_node_group_2
  aws_eks_cluster_ami_type = var.aws_eks_cluster_ami_type
}
