output "aws_s3_bucket_for_terraform_state" {
  value = module.illumidesk-state.aws_s3_bucket_for_terraform_state
}

output "aws_kms_alias_for_terraform_state" {
  value = module.illumidesk-state.aws_kms_alias_for_terraform_state
}

output "aws_dynamodb_table_for_terraform_state" {
  value = module.illumidesk-state.aws_dynamodb_table_for_terraform_state
}