<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elasticache_replication_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group) | resource |
| [aws_elasticache_subnet_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_security_groups"></a> [allowed\_security\_groups](#input\_allowed\_security\_groups) | Security groups allowed to access the Elasticache cluster | `list(string)` | `[]` | no |
| <a name="input_elasticache_engine"></a> [elasticache\_engine](#input\_elasticache\_engine) | Elasticache engine | `string` | `"redis"` | no |
| <a name="input_elasticache_node_type"></a> [elasticache\_node\_type](#input\_elasticache\_node\_type) | Elasticache node type | `string` | `"cache.t4g.micro"` | no |
| <a name="input_elasticache_subnet_group_name"></a> [elasticache\_subnet\_group\_name](#input\_elasticache\_subnet\_group\_name) | Elasticache subnet group name | `string` | `"illumidesk-elasticache-subnet-group"` | no |
| <a name="input_elasticache_subnets"></a> [elasticache\_subnets](#input\_elasticache\_subnets) | Elasticache subnets | `list(string)` | `[]` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Elasticache engine version | `string` | `"7.0"` | no |
| <a name="input_node_groups"></a> [node\_groups](#input\_node\_groups) | Number of nodes groups to create in the cluster | `number` | `1` | no |
| <a name="input_num_cache_nodes"></a> [num\_cache\_nodes](#input\_num\_cache\_nodes) | Number of cache nodes | `number` | `1` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Elasticache parameter group name | `string` | `"default.redis7"` | no |
| <a name="input_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#input\_private\_subnets\_cidr\_blocks) | CIDR blocks allowed to access the Elasticache cluster | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Name": "illumidesk-elastiache"<br>}</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elasticache_id"></a> [elasticache\_id](#output\_elasticache\_id) | n/a |
<!-- END_TF_DOCS -->