locals {
  aws_eks_cluster_name = "${var.aws_eks_cluster_name}-${random_string.suffix.result}"
  aws_vpc_name         = "${var.aws_vpc_name}-${random_string.suffix.result}"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "${var.aws_vpc_name}-${random_string.suffix.result}"
  tags = {
    Name    = local.aws_eks_cluster_name
    Environment = var.environment
  }
}
