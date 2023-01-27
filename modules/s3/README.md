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
| [aws_iam_role.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_s3_bucket.media](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket.static](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.domain_join_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | S3 bucket IAM policy name | `string` | `"illumidesk-api-bucket-policy"` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | n/a | `string` | `"illumidesk-image-builder-application"` | no |
| <a name="input_iam_user_name"></a> [iam\_user\_name](#input\_iam\_user\_name) | n/a | `string` | `"illumidesk-api-access-v2"` | no |
| <a name="input_s3_media_bucket_name"></a> [s3\_media\_bucket\_name](#input\_s3\_media\_bucket\_name) | AWS S3 media bucket name | `string` | `"illumidesk-api-media"` | no |
| <a name="input_s3_static_bucket_name"></a> [s3\_static\_bucket\_name](#input\_s3\_static\_bucket\_name) | AWS S3 static bucket name | `string` | `"illumidesk-api-static"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | <pre>{<br>  "Environment": "dev",<br>  "Name": "illumidesk-eks"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn_media"></a> [bucket\_arn\_media](#output\_bucket\_arn\_media) | n/a |
| <a name="output_bucket_arn_static"></a> [bucket\_arn\_static](#output\_bucket\_arn\_static) | n/a |
| <a name="output_bucket_id_media"></a> [bucket\_id\_media](#output\_bucket\_id\_media) | n/a |
| <a name="output_bucket_id_static"></a> [bucket\_id\_static](#output\_bucket\_id\_static) | n/a |
<!-- END_TF_DOCS -->