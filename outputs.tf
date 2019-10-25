output "bucket" {
  description = "The name of the bucket."
  value = aws_s3_bucket.this.bucket
}

output "arn" {
  description = "The ARN of the bucket."
  value = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "The bucket domain name."
  value = aws_s3_bucket.this.bucket_domain_name
}
