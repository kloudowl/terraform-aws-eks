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

module "illumidesk-state" {
  source = "./modules/state"
  aws_region_for_state = var.aws_region_for_state
}