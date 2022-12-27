terraform {
  backend "s3" {
    bucket         = "illumidesk-terraform-state-backend"
    key            = "state/illumidesk-terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "alias/illumidesk-terraform-bucket-key"
    dynamodb_table = "terraform-state-lock"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48"
    }
  }
}