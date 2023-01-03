resource "aws_s3_bucket" "static" {
  bucket = "${var.s3_static_bucket_name}"
  tags = var.tags
}

resource "aws_s3_bucket" "media" {
  bucket = "${var.s3_media_bucket_name}"
  tags = var.tags
}

resource "aws_iam_role" "main" {
  name               = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
 
  inline_policy {
    policy = data.aws_iam_policy_document.domain_join_policy.json
  }
  tags = var.tags
}
