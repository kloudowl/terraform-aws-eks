locals {
  eks_cluster_name = "${var.eks_cluster_name}-${random_string.suffix.result}"
  vpc_name         = "${var.vpc_name}-${random_string.suffix.result}"

  vpc_cidr = "10.0.0.0/16"

  tags = {
    Name        = local.eks_cluster_name
    Environment = var.environment
  }
}
