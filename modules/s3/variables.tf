variable "bucket_name_static" {
  description = "S3 bucket name for static files"
  type        = string
  default     =  "illumidesk-api-static"
}

variable "bucket_name_media" {
  description = "S3 bucket name for media files"
  type        = string
  default     =  "illumidesk-api-media"
}

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
