variable "aws_region" {
  type    = string
  default = "us-east-1"
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

variable "auth_client_name" {
  type    = string
  default = "IllumiDesk Web App"
}

variable "auth_custom_domain" {
  type    = string
  default = "auth.app-dev.illumidesk.com"
}

variable "auth_tenant_domain" {
  type    = string
  default = "illumidesk-gcp.us.auth0.com"
}

variable "main_host" {
  type    = string
  default = "app-dev.illumidesk.com"
}
  
variable "prefix_environment_name" {
  type    = string
  default = "dev"
}

variable "support_email" {
  type    = string
  default = "support@illumidesk.com"
}

variable "support_url" {
  type    = string
  default = "https://support.illumidesk.com"
}
