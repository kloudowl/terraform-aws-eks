variable "aws_eks_cluster_ami_type" {
  description = "EKS cluster AMI type"
  type        = string
  default     = "AL2_x86_64"
}

variable "aws_eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "illumidesk-eks"
}

variable "aws_eks_cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.24"
}

variable "aws_region_for_cluster" {
  description = "AWS region for IllumiDesk cluster"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "AWS VPC name"
  type        = string
  default     = "illumidesk-vpc"
}

variable "control_plane_subnet_ids" {
  description = "EKS Control plane subnet IDs"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "instance_type_for_node_group_1" {
  description = "Instance type for node group 1"
  type        = string
  default     = "t3.small"
}

variable "instance_type_for_node_group_2" {
  description = "Instance type for node group 2"
  type        = string
  default     = "t3.small"
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
  default     = []
}

variable "remote_access_id" {
  description = "Remote access ID"
  type        = string
  default     = ""
}

variable "service_account_role_arn" {
  description = "Service account role ARN"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "VPC Subent IDs"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-eks"
    Environment = "dev"
  }
}
