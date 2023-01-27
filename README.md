<!-- BEGIN_TF_DOCS -->
# IllumiDesk Cloud

This is the configuration used to deploy the IllumiDesk stack with Terraform. This setup uses AWS S3 + AWS DynamoDB to manage Terraform state.

## What will this setup do?

This is a Terraform configuration that manages the IllumiDesk stack. It will create the following resources:

- AWS Application Load Balancer
- AWS EKS Cluster
- AWS ECR Repository
- AWS RDS Aurora Postgres Database
- AWS Security Groups
- AWS S3 Buckets
- AWS VPC

This setup the Terraform CLI to manage the IllumiDesk stack using Terraform Workspaces.

## Requirements

You must have an AWS account and provide your AWS Access Key ID and AWS Secret Access Key.

The values for `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` should be saved as environment variables on your workspace or they can be provided as variables in the `*.tfvars` file.

## Quick Start

Copy the `example.tfvars` file to `<environment>.tfvars` and update the values with your AWS credentials.

```bash
cp example.tfvars dev.tfvars
```

Create and/or select a Terraform workspace.

```bash
terraform workspace new dev
```

Initialize the Terraform configuration.

```bash
terraform init
```

Plan the Terraform configuration.

```bash
terraform plan -var-file=dev.tfvars
```

Apply the Terraform configuration.

```bash
terraform apply -var-file=dev.tfvars
```

## Terraform Reference

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.48 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.48 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_backups"></a> [backups](#module\_backups) | ./modules/backups | n/a |
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ./modules/ecr | n/a |
| <a name="module_eks"></a> [eks](#module\_eks) | ./modules/eks | n/a |
| <a name="module_elasticache"></a> [elasticache](#module\_elasticache) | ./modules/elasticache | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ./modules/networking | n/a |
| <a name="module_rds"></a> [rds](#module\_rds) | ./modules/rds | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ./modules/s3 | n/a |
| <a name="module_state"></a> [state](#module\_state) | ./modules/state | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | AWS access key id | `string` | `""` | no |
| <a name="input_aws_region_for_cluster"></a> [aws\_region\_for\_cluster](#input\_aws\_region\_for\_cluster) | AWS region for IllumiDesk cluster | `string` | `"us-east-1"` | no |
| <a name="input_aws_region_for_state"></a> [aws\_region\_for\_state](#input\_aws\_region\_for\_state) | AWS region for Terraform state | `string` | `"us-east-1"` | no |
| <a name="input_backup_plan_name"></a> [backup\_plan\_name](#input\_backup\_plan\_name) | Backup plan name | `string` | `"illumidesk-plan"` | no |
| <a name="input_backup_role_name"></a> [backup\_role\_name](#input\_backup\_role\_name) | Backup role name | `string` | `"illumidesk-backup-role"` | no |
| <a name="input_backup_selection_name"></a> [backup\_selection\_name](#input\_backup\_selection\_name) | Backup selection name | `string` | `"illumidesk-backup-role"` | no |
| <a name="input_backup_vault_name"></a> [backup\_vault\_name](#input\_backup\_vault\_name) | Backup vault name | `string` | `"illumidesk-vault"` | no |
| <a name="input_ecr_repository_name"></a> [ecr\_repository\_name](#input\_ecr\_repository\_name) | ECR cluster version | `string` | `"illumidesk"` | no |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the EKS cluster | `string` | `"illumidesk-eks"` | no |
| <a name="input_eks_cluster_version"></a> [eks\_cluster\_version](#input\_eks\_cluster\_version) | EKS cluster version | `string` | `"1.24"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | `"dev"` | no |
| <a name="input_instance_type_for_node_group_1"></a> [instance\_type\_for\_node\_group\_1](#input\_instance\_type\_for\_node\_group\_1) | Instance type for node group 1 | `string` | `"t3.small"` | no |
| <a name="input_instance_type_for_node_group_2"></a> [instance\_type\_for\_node\_group\_2](#input\_instance\_type\_for\_node\_group\_2) | Instance type for node group 2 | `string` | `"t3.small"` | no |
| <a name="input_rds_engine_mode"></a> [rds\_engine\_mode](#input\_rds\_engine\_mode) | RDS Aurora engine mode | `string` | `"provisioned"` | no |
| <a name="input_rds_engine_version"></a> [rds\_engine\_version](#input\_rds\_engine\_version) | RDS Aurora engine version | `string` | `"13.6"` | no |
| <a name="input_rds_instance_class"></a> [rds\_instance\_class](#input\_rds\_instance\_class) | RDS Aurora instance class | `string` | `"db.serverless"` | no |
| <a name="input_rds_master_username"></a> [rds\_master\_username](#input\_rds\_master\_username) | The RDS master username | `string` | `"illumidesk"` | no |
| <a name="input_rds_parameter_group_family"></a> [rds\_parameter\_group\_family](#input\_rds\_parameter\_group\_family) | RDS Aurora parameter group family | `string` | `"aurora-postgresql13"` | no |
| <a name="input_s3_media_bucket_name"></a> [s3\_media\_bucket\_name](#input\_s3\_media\_bucket\_name) | AWS S3 media bucket name | `string` | `"illumidesk-api-media"` | no |
| <a name="input_s3_static_bucket_name"></a> [s3\_static\_bucket\_name](#input\_s3\_static\_bucket\_name) | AWS S3 static bucket name | `string` | `"illumidesk-api-static"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | AWS secret key id | `string` | `""` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | `"illumidesk-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_auth_configmap_yaml"></a> [aws\_auth\_configmap\_yaml](#output\_aws\_auth\_configmap\_yaml) | Formatted yaml output for base aws-auth configmap containing roles used in cluster node groups/fargate profiles |
| <a name="output_aws_backup_plan_id"></a> [aws\_backup\_plan\_id](#output\_aws\_backup\_plan\_id) | The backup plan ID |
| <a name="output_aws_backup_role_arn"></a> [aws\_backup\_role\_arn](#output\_aws\_backup\_role\_arn) | The backup IAM role ARN |
| <a name="output_aws_backup_selection_id"></a> [aws\_backup\_selection\_id](#output\_aws\_backup\_selection\_id) | The backup selection ID |
| <a name="output_aws_backup_vault_id"></a> [aws\_backup\_vault\_id](#output\_aws\_backup\_vault\_id) | The backup vault ID |
| <a name="output_aws_dynamodb_table_for_terraform_state"></a> [aws\_dynamodb\_table\_for\_terraform\_state](#output\_aws\_dynamodb\_table\_for\_terraform\_state) | n/a |
| <a name="output_aws_kms_alias_for_terraform_state"></a> [aws\_kms\_alias\_for\_terraform\_state](#output\_aws\_kms\_alias\_for\_terraform\_state) | n/a |
| <a name="output_aws_s3_bucket_for_terraform_state"></a> [aws\_s3\_bucket\_for\_terraform\_state](#output\_aws\_s3\_bucket\_for\_terraform\_state) | n/a |
| <a name="output_bucket_id_media"></a> [bucket\_id\_media](#output\_bucket\_id\_media) | S3 bucket id for media |
| <a name="output_bucket_id_static"></a> [bucket\_id\_static](#output\_bucket\_id\_static) | S3 bucket id for static |
| <a name="output_cloudwatch_log_group_arn"></a> [cloudwatch\_log\_group\_arn](#output\_cloudwatch\_log\_group\_arn) | Arn of cloudwatch log group created |
| <a name="output_cloudwatch_log_group_name"></a> [cloudwatch\_log\_group\_name](#output\_cloudwatch\_log\_group\_name) | Name of cloudwatch log group created |
| <a name="output_cluster_addons"></a> [cluster\_addons](#output\_cluster\_addons) | Map of attribute maps for all EKS cluster addons enabled |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The Amazon Resource Name (ARN) of the cluster |
| <a name="output_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#output\_cluster\_certificate\_authority\_data) | Base64 encoded certificate data required to communicate with the cluster |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for your Kubernetes API server |
| <a name="output_cluster_iam_role_arn"></a> [cluster\_iam\_role\_arn](#output\_cluster\_iam\_role\_arn) | IAM role ARN of the EKS cluster |
| <a name="output_cluster_iam_role_name"></a> [cluster\_iam\_role\_name](#output\_cluster\_iam\_role\_name) | IAM role name of the EKS cluster |
| <a name="output_cluster_iam_role_unique_id"></a> [cluster\_iam\_role\_unique\_id](#output\_cluster\_iam\_role\_unique\_id) | Stable and unique string identifying the IAM role |
| <a name="output_cluster_identity_providers"></a> [cluster\_identity\_providers](#output\_cluster\_identity\_providers) | Map of attribute maps for all EKS identity providers enabled |
| <a name="output_cluster_master_password"></a> [cluster\_master\_password](#output\_cluster\_master\_password) | The master password for the RDS cluster |
| <a name="output_cluster_master_username"></a> [cluster\_master\_username](#output\_cluster\_master\_username) | The master username for the RDS cluster |
| <a name="output_cluster_oidc_issuer_url"></a> [cluster\_oidc\_issuer\_url](#output\_cluster\_oidc\_issuer\_url) | The URL on the EKS cluster for the OpenID Connect identity provider |
| <a name="output_cluster_platform_version"></a> [cluster\_platform\_version](#output\_cluster\_platform\_version) | Platform version for the cluster |
| <a name="output_cluster_primary_security_group_id"></a> [cluster\_primary\_security\_group\_id](#output\_cluster\_primary\_security\_group\_id) | Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication. Referred to as 'Cluster security group' in the EKS console |
| <a name="output_cluster_security_group_arn"></a> [cluster\_security\_group\_arn](#output\_cluster\_security\_group\_arn) | Amazon Resource Name (ARN) of the cluster security group |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | ID of the cluster security group |
| <a name="output_cluster_status"></a> [cluster\_status](#output\_cluster\_status) | Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED` |
| <a name="output_cluster_tls_certificate_sha1_fingerprint"></a> [cluster\_tls\_certificate\_sha1\_fingerprint](#output\_cluster\_tls\_certificate\_sha1\_fingerprint) | The SHA1 fingerprint of the public key of the cluster's certificate |
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | RDS database subnets |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | The name of the EKS cluster |
| <a name="output_eks_managed_node_groups"></a> [eks\_managed\_node\_groups](#output\_eks\_managed\_node\_groups) | Map of attribute maps for all EKS managed node groups created |
| <a name="output_eks_managed_node_groups_autoscaling_group_names"></a> [eks\_managed\_node\_groups\_autoscaling\_group\_names](#output\_eks\_managed\_node\_groups\_autoscaling\_group\_names) | List of the autoscaling group names created by EKS managed node groups |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | The Amazon Resource Name (ARN) of the key |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | The globally unique identifier for the key |
| <a name="output_kms_key_policy"></a> [kms\_key\_policy](#output\_kms\_key\_policy) | The IAM resource policy set on the key |
| <a name="output_node_security_group_arn"></a> [node\_security\_group\_arn](#output\_node\_security\_group\_arn) | Amazon Resource Name (ARN) of the node shared security group |
| <a name="output_node_security_group_id"></a> [node\_security\_group\_id](#output\_node\_security\_group\_id) | ID of the node shared security group |
| <a name="output_oidc_provider"></a> [oidc\_provider](#output\_oidc\_provider) | The OpenID Connect identity provider (issuer URL without leading `https://`) |
| <a name="output_oidc_provider_arn"></a> [oidc\_provider\_arn](#output\_oidc\_provider\_arn) | The ARN of the OIDC Provider if `enable_irsa = true` |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | The VPC's private subnet IDs |
| <a name="output_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#output\_private\_subnets\_cidr\_blocks) | The VPC's private subnet CIDR blocks |
| <a name="output_s3_media_iam_role_arn"></a> [s3\_media\_iam\_role\_arn](#output\_s3\_media\_iam\_role\_arn) | IAM role ARN of the S3 media bucket |
| <a name="output_s3_static_iam_role_arn"></a> [s3\_static\_iam\_role\_arn](#output\_s3\_static\_iam\_role\_arn) | IAM role ARN of the S3 static bucket |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The VPC ID which all of the resources will be launched into |
<!-- END_TF_DOCS -->