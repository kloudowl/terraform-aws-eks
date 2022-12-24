resource "aws_kms_key" "terraform-state-bucket-key" {
 description             = "This key is used to encrypt bucket objects"
 deletion_window_in_days = 10
 enable_key_rotation     = true
}

resource "aws_kms_alias" "key-alias" {
 name          = "alias/illumidesk-terraform-bucket-key"
 target_key_id = aws_kms_key.terraform-state-bucket-key.key_id
}

resource "aws_s3_bucket" "terraform-state-bucket" {
    bucket = "illumidesk-terraform-state-backend"

    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}

resource "aws_s3_bucket_public_access_block" "block" {
 bucket = aws_s3_bucket.terraform-state-bucket.id

 block_public_acls       = true
 block_public_policy     = true
 ignore_public_acls      = true
 restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "default" {
  bucket = aws_s3_bucket.terraform-state-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform-state" {
 name           = "terraform-state-lock"
 read_capacity  = 20
 write_capacity = 20
 hash_key       = "LockID"

 attribute {
   name = "LockID"
   type = "S"
 }
 tags = {
   "Name" = "Terraform State Lock"
 }
}
