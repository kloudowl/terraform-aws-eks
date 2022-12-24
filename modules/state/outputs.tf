output "aws_s3_bucket_for_terraform_state" {
  value = aws_s3_bucket.terraform-state-bucket.id
}

output "aws_kms_alias_for_terraform_state" {
  value = aws_kms_alias.key-alias.name
}

output "aws_dynamodb_table_for_terraform_state" {
  value = aws_dynamodb_table.terraform-state.name
}