locals {
  cluster_name = "${var.cluster_name}-${random_string.suffix.result}"
  vpc_cidr     = "10.0.0.0/16"
  vpc_name     = "${var.vpc_name}-${random_string.suffix.result}"
  tags = {
    Name        = local.cluster_name
    Environment = var.environment
  }
}
