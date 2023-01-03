variable "ecr_repository_name" {
  description = "ECR repository name"
  type = string
  default = "illumidesk"
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {
    Name    = "illumidesk-eks"
    Environment = "dev"
  }
}