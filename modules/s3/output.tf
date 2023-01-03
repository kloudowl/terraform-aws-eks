
output "bucket_id_media" {
  value = aws_s3_bucket.media.id
}

output "bucket_arn_media" {
  value = aws_s3_bucket.media.arn
}

output "bucket_id_static" {
  value = aws_s3_bucket.static.id
}

output "bucket_arn_static" {
  value = aws_s3_bucket.static.arn
}
