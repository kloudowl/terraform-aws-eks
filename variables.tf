variable "auth_client_name" {
  type    = string
  default = "IllumiDesk Web App"
}

variable "auth_client_id" {
  type    = string
  default = ""
}

variable "auth_client_secret" {
  type    = string
  default = ""
}

variable "auth_client_description" {
  type    = string
  default = "IllumiDesk Web App created by Terraform"
}

variable "auth_debug" {
  type    = bool
  default = true
}

variable "auth_custom_domain" {
  type    = string
  default = "auth.app-dev.illumidesk.com"
}

variable "auth_tenant_domain" {
  type    = string
  default = "illumidesk-gcp.us.auth0.com"
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}
