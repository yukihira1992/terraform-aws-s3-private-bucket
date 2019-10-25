output "bucket" {
  value = module.private_s3_bucket.bucket
}

output "arn" {
  value = module.private_s3_bucket.arn
}

output "bucket_domain_name" {
  value = module.private_s3_bucket.bucket_domain_name
}
