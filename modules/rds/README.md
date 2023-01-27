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
| <a name="module_cluster"></a> [cluster](#module\_cluster) | terraform-aws-modules/rds-aurora/aws | ~> 7.6.0 |

## Resources

| Name | Type |
|------|------|
| [aws_db_parameter_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |
| [aws_rds_cluster_parameter_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_parameter_group) | resource |
| [aws_rds_engine_version.postgresql](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/rds_engine_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_security_groups"></a> [allowed\_security\_groups](#input\_allowed\_security\_groups) | Security groups allowed to access the RDS Aurora cluster | `list(string)` | `[]` | no |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | Database subnets | `list(string)` | `[]` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | RDS Aurora database subnet group name | `string` | `"illumidesk-rds-subnet-group"` | no |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | Database subnets | `string` | `"illumidesk"` | no |
| <a name="input_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#input\_private\_subnets\_cidr\_blocks) | CIDR blocks allowed to access the RDS Aurora cluster | `list(string)` | `[]` | no |
| <a name="input_rds_engine_mode"></a> [rds\_engine\_mode](#input\_rds\_engine\_mode) | RDS Aurora engine mode | `string` | `"provisioned"` | no |
| <a name="input_rds_engine_version"></a> [rds\_engine\_version](#input\_rds\_engine\_version) | RDS Aurora engine version | `string` | `""` | no |
| <a name="input_rds_instance_class"></a> [rds\_instance\_class](#input\_rds\_instance\_class) | RDS Aurora instance class | `string` | `"db.serverless"` | no |
| <a name="input_rds_parameter_group_family"></a> [rds\_parameter\_group\_family](#input\_rds\_parameter\_group\_family) | RDS Aurora parameter group family | `string` | `"aurora-postgresql13"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Name": "illumidesk-eks"<br>}</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_master_password"></a> [cluster\_master\_password](#output\_cluster\_master\_password) | The master password for the RDS cluster |
| <a name="output_cluster_master_username"></a> [cluster\_master\_username](#output\_cluster\_master\_username) | The master username for the RDS cluster |
| <a name="output_database_arn"></a> [database\_arn](#output\_database\_arn) | The ARN of the RDS cluster |
<!-- END_TF_DOCS -->