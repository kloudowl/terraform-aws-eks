variable "access_key" {
  description = "AWS access key id"
  type        = string
  default     = ""
}

variable "secret_key" {
  description = "AWS secret key id"
  type        = string
  default     = ""
}

variable "aws_region_for_cluster" {
  description = "AWS region for IllumiDesk cluster"
  type        = string
  default     = "us-east-1"
}

variable "aws_region_for_state" {
  description = "AWS region for Terraform state"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "illumidesk-eks"
}

variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.24"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "illumidesk-eks"
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

