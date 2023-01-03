variable "iam_policy_name" {
  description = "S3 bucket IAM policy name"
  type        = string
  default     =  "illumidesk-api-bucket-policy"
}

variable "iam_user_name" {
  type    = string
  default = "illumidesk-api-access-v2"
}

variable "iam_role_name" {
  type    = string
  default = "illumidesk-image-builder-application"
}

variable "s3_media_bucket_name" {
  description = "AWS S3 media bucket name"
  type        = string
  default     =  "illumidesk-api-media"
}

variable "s3_static_bucket_name" {
  description = "AWS S3 static bucket name"
  type        = string
  default     =  "illumidesk-api-static"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-eks"
    Environment = "dev"
  }
}
