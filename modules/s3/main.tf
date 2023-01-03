resource "aws_s3_bucket" "static" {
  bucket = var.bucket_name_static
}

resource "aws_s3_bucket" "media" {
  bucket = var.bucket_name_media
}

resource "aws_iam_role" "main" {
  name               = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
 
  inline_policy {
    policy = data.aws_iam_policy_document.domain_join_policy.json
  }
}
