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

module "illumidesk-state" {
  source               = "./modules/state"
  aws_region_for_state = var.aws_region_for_state
}

module "illumidesk-networking" {
  source                 = "./modules/networking"
  aws_region_for_cluster = var.aws_region_for_cluster
  aws_vpc_name           = local.aws_vpc_name
  aws_eks_cluster_name   = local.aws_eks_cluster_name
}