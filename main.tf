provider "aws" {
  region = var.aws_region
}

provider "auth0" {
  domain        = var.auth_tenant_domain
  client_id     = var.auth_client_id
  client_secret = var.auth_client_secret
  debug         = var.auth_debug
}

