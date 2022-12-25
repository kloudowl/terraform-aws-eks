locals {
  aws_eks_cluster_name = "${var.aws_eks_cluster_name}-${random_string.suffix.result}"
  aws_vpc_name         = "${var.aws_vpc_name}-${random_string.suffix.result}"
}