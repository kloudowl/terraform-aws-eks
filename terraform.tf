terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
    auth0 = {
      source = "auth0/auth0"
      version = "~> 0.41.0"
    }
  }
}
