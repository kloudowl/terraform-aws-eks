locals {
  eks_cluster_name      = "${var.eks_cluster_name}-${random_string.suffix.result}"
  s3_media_bucket_name  = "${var.s3_media_bucket_name}-${random_string.suffix.result}"
  s3_static_bucket_name = "${var.s3_static_bucket_name}-${random_string.suffix.result}"
  ecr_repository_name   = "${var.environment}-${var.ecr_repository_name}"
  vpc_name              = "${var.vpc_name}-${random_string.suffix.result}"

  backup_plan_name      = "${var.backup_plan_name}-${random_string.suffix.result}"
  backup_role_name      = "${var.backup_role_name}-${random_string.suffix.result}"
  backup_selection_name = "${var.backup_selection_name}-${random_string.suffix.result}"
  backup_vault_name     = "${var.backup_vault_name}-${random_string.suffix.result}"

  vpc_cidr = "10.0.0.0/16"

  tags = {
    Name        = local.eks_cluster_name
    Environment = var.environment
  }
}
