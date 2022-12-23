variable "auth_client_name" {
  type    = string
  default = "IllumiDesk Web App"
}

variable "auth_client_description" {
  type    = string
  default = "IllumiDesk Web App created by Terraform"
}

variable "auth_debug" {
  type    = bool
  default = true
}

variable "auth_client_custom_domain" {
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

variable "prefix_environment_name" {
  description = "Prefix environment name"
  default     = "dev"
}

variable "zone_name" {
  description = "Domain zone name (naked domain)"
  default     = "illumidesk.com"
}

variable "support_email" {
  type    = string
  default = "support@illumidesk.com"
}

variable "support_url" {
  type    = string
  default = "https://support.illumidesk.com"
}
