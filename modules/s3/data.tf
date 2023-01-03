data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["s3.amazonaws.com"]
    }

  }
}

data "aws_iam_policy_document" "domain_join_policy" {
  statement {
    actions = [
      "s3:GetObject",
    ]
    resources = [
      "${aws_s3_bucket.static.arn}/*",
      "${aws_s3_bucket.media.arn}/*"
    ]
    effect = "Allow"
  }
}
