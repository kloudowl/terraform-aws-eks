<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.remote_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region_for_cluster"></a> [aws\_region\_for\_cluster](#input\_aws\_region\_for\_cluster) | AWS region for IllumiDesk cluster | `string` | `"us-east-1"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment | `string` | `"dev"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | VPC private subnets | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Name": "illumidesk-eks"<br>}</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | AWS VPC name | `string` | `"illumidesk-eks"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azs"></a> [azs](#output\_azs) | AZs for the VPC |
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | Subnets for RDS database |
| <a name="output_elasticache_subnets"></a> [elasticache\_subnets](#output\_elasticache\_subnets) | Subnets for Elasticache |
| <a name="output_intra_subnets"></a> [intra\_subnets](#output\_intra\_subnets) | Subnets for internal communication |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | Private subnets |
| <a name="output_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#output\_private\_subnets\_cidr\_blocks) | Private subnet CIDR blocks |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Public subnets |
| <a name="output_remote_access_security_group_id"></a> [remote\_access\_security\_group\_id](#output\_remote\_access\_security\_group\_id) | Security group ID for remote access |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
<!-- END_TF_DOCS -->