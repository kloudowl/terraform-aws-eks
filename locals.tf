locals {
  eks_cluster_name = "${var.eks_cluster_name}-${random_string.suffix.result}"
  rds_cluster_name = "${var.rds_cluster_name}-${random_string.suffix.result}"
  vpc_cidr         = "10.0.0.0/16"
  vpc_name         = "${var.vpc_name}-${random_string.suffix.result}"
  tags = {
    Name        = local.eks_cluster_name
    Environment = var.environment
  }
}
