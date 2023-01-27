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
| [aws_dynamodb_table.terraform-state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_kms_alias.key-alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.terraform-state-bucket-key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.terraform-state-bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_versioning.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region_for_state"></a> [aws\_region\_for\_state](#input\_aws\_region\_for\_state) | AWS region | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_dynamodb_table_for_terraform_state"></a> [aws\_dynamodb\_table\_for\_terraform\_state](#output\_aws\_dynamodb\_table\_for\_terraform\_state) | n/a |
| <a name="output_aws_kms_alias_for_terraform_state"></a> [aws\_kms\_alias\_for\_terraform\_state](#output\_aws\_kms\_alias\_for\_terraform\_state) | n/a |
| <a name="output_aws_s3_bucket_for_terraform_state"></a> [aws\_s3\_bucket\_for\_terraform\_state](#output\_aws\_s3\_bucket\_for\_terraform\_state) | n/a |
<!-- END_TF_DOCS -->