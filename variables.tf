variable "access_key" {
  description = "AWS access key id"
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

variable "backup_plan_name" {
  description = "Backup plan name"
  type        = string
  default     = "illumidesk-plan"
}

variable "backup_role_name" {
  description = "Backup role name"
  type        = string
  default     = "illumidesk-backup-role"
}

variable "backup_selection_name" {
  description = "Backup selection name"
  type        = string
  default     = "illumidesk-backup-role"
}

variable "backup_vault_name" {
  description = "Backup vault name"
  type        = string
  default     = "illumidesk-vault"
}

variable "ecr_repository_name" {
  description = "ECR cluster version"
  type        = string
  default     = "illumidesk"
}

variable "eks_cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.24"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "illumidesk-eks"
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

variable "rds_engine_mode" {
  description = "RDS Aurora engine mode"
  type        = string
  default     = "provisioned"
}

variable "rds_engine_version" {
  description = "RDS Aurora engine version"
  type        = string
  default     = "13.6"
}

variable "rds_instance_class" {
  description = "RDS Aurora instance class"
  type        = string
  default     = "db.serverless"
}

variable "rds_master_username" {
  description = "The RDS master username"
  type        = string
  default     = "illumidesk"
}

variable "rds_parameter_group_family" {
  description = "RDS Aurora parameter group family"
  type        = string
  default     = "aurora-postgresql13"
}

variable "s3_media_bucket_name" {
  description = "AWS S3 media bucket name"
  type        = string
  default     = "illumidesk-api-media"
}

variable "s3_static_bucket_name" {
  description = "AWS S3 static bucket name"
  type        = string
  default     = "illumidesk-api-static"
}

variable "secret_key" {
  description = "AWS secret key id"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "illumidesk-vpc"
}
