################################################################################
# State
################################################################################

output "aws_s3_bucket_for_terraform_state" {
  value = module.state.aws_s3_bucket_for_terraform_state
}

output "aws_kms_alias_for_terraform_state" {
  value = module.state.aws_kms_alias_for_terraform_state
}

output "aws_dynamodb_table_for_terraform_state" {
  value = module.state.aws_dynamodb_table_for_terraform_state
}

################################################################################
# Networking
################################################################################

output "vpc_id" {
  description = "The VPC ID which all of the resources will be launched into"
  value       = module.networking.vpc_id
}

output "private_subnets" {
  description = "The VPC's private subnet IDs"
  value       = module.networking.private_subnets
}

output "private_subnets_cidr_blocks" {
  description = "The VPC's private subnet CIDR blocks"
  value       = module.networking.private_subnets_cidr_blocks
}

################################################################################
# Backups
################################################################################

output "aws_backup_plan_id" {
  description = "The backup plan ID"
  value       = module.backups.aws_backup_plan_id
}

output "aws_backup_vault_id" {
  description = "The backup vault ID"
  value       = module.backups.aws_backup_vault_id
}

output "aws_backup_selection_id" {
  description = "The backup selection ID"
  value       = module.backups.aws_backup_selection_id
}

output "aws_backup_role_arn" {
  description = "The backup IAM role ARN"
  value       = module.backups.aws_backup_role_arn
}

################################################################################
# Cluster
################################################################################

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks.cluster_arn
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.cluster_certificate_authority_data
}

output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts"
  value       = module.eks.eks_cluster_id
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.eks_cluster_name
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster for the OpenID Connect identity provider"
  value       = module.eks.cluster_oidc_issuer_url
}

output "cluster_platform_version" {
  description = "Platform version for the cluster"
  value       = module.eks.cluster_platform_version
}

output "cluster_status" {
  description = "Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`"
  value       = module.eks.cluster_status
}

output "cluster_primary_security_group_id" {
  description = "Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication. Referred to as 'Cluster security group' in the EKS console"
  value       = module.eks.cluster_primary_security_group_id
}

################################################################################
# KMS Key
################################################################################

output "kms_key_arn" {
  description = "The Amazon Resource Name (ARN) of the key"
  value       = module.eks.kms_key_arn
}

output "kms_key_id" {
  description = "The globally unique identifier for the key"
  value       = module.eks.kms_key_id
}

output "kms_key_policy" {
  description = "The IAM resource policy set on the key"
  value       = module.eks.kms_key_policy
}

################################################################################
# Security Group
################################################################################

output "cluster_security_group_arn" {
  description = "Amazon Resource Name (ARN) of the cluster security group"
  value       = module.eks.cluster_security_group_arn
}

output "cluster_security_group_id" {
  description = "ID of the cluster security group"
  value       = module.eks.cluster_security_group_id
}

################################################################################
# Node Security Group
################################################################################

output "node_security_group_arn" {
  description = "Amazon Resource Name (ARN) of the node shared security group"
  value       = module.eks.node_security_group_arn
}

output "node_security_group_id" {
  description = "ID of the node shared security group"
  value       = module.eks.node_security_group_id
}

################################################################################
# IRSA
################################################################################

output "oidc_provider" {
  description = "The OpenID Connect identity provider (issuer URL without leading `https://`)"
  value       = module.eks.oidc_provider
}

output "oidc_provider_arn" {
  description = "The ARN of the OIDC Provider if `enable_irsa = true`"
  value       = module.eks.oidc_provider_arn
}

output "cluster_tls_certificate_sha1_fingerprint" {
  description = "The SHA1 fingerprint of the public key of the cluster's certificate"
  value       = module.eks.cluster_tls_certificate_sha1_fingerprint
}

################################################################################
# IAM Role
################################################################################

output "cluster_iam_role_name" {
  description = "IAM role name of the EKS cluster"
  value       = module.eks.cluster_iam_role_name
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster"
  value       = module.eks.cluster_iam_role_arn
}

output "cluster_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.eks.cluster_iam_role_unique_id
}

output "s3_media_iam_role_arn" {
  description = "IAM role ARN of the S3 media bucket"
  value       = module.s3.bucket_id_media
}

output "s3_static_iam_role_arn" {
  description = "IAM role ARN of the S3 static bucket"
  value       = module.s3.bucket_id_static
}

################################################################################
# EKS Addons
################################################################################

output "cluster_addons" {
  description = "Map of attribute maps for all EKS cluster addons enabled"
  value       = module.eks.cluster_addons
}

################################################################################
# EKS Identity Provider
################################################################################

output "cluster_identity_providers" {
  description = "Map of attribute maps for all EKS identity providers enabled"
  value       = module.eks.cluster_identity_providers
}

################################################################################
# CloudWatch Log Group
################################################################################

output "cloudwatch_log_group_name" {
  description = "Name of cloudwatch log group created"
  value       = module.eks.cloudwatch_log_group_name
}

output "cloudwatch_log_group_arn" {
  description = "Arn of cloudwatch log group created"
  value       = module.eks.cloudwatch_log_group_arn
}

################################################################################
# EKS Managed Node Group
################################################################################

output "eks_managed_node_groups" {
  description = "Map of attribute maps for all EKS managed node groups created"
  value       = module.eks.eks_managed_node_groups
}

output "eks_managed_node_groups_autoscaling_group_names" {
  description = "List of the autoscaling group names created by EKS managed node groups"
  value       = module.eks.eks_managed_node_groups_autoscaling_group_names
}

################################################################################
# RDS
################################################################################

output "database_subnets" {
  description = "RDS database subnets"
  value       = module.networking.database_subnets
}

output "cluster_master_username" {
  value       = module.rds.cluster_master_username
  description = "The master username for the RDS cluster"
  sensitive   = true
}

output "cluster_master_password" {
  value       = module.rds.cluster_master_password
  description = "The master password for the RDS cluster"
  sensitive   = true
}

################################################################################
# S3
################################################################################

output "bucket_id_media" {
  description = "S3 bucket id for media"
  value       = module.s3.bucket_id_media
}

output "bucket_id_static" {
  description = "S3 bucket id for static"
  value       = module.s3.bucket_id_static
}

################################################################################
# Additional
################################################################################

output "aws_auth_configmap_yaml" {
  description = "Formatted yaml output for base aws-auth configmap containing roles used in cluster node groups/fargate profiles"
  value       = module.eks.aws_auth_configmap_yaml
}
