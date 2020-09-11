resource "aws_s3_bucket" "this" {
  bucket = var.bucket
  acl = "private"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
        kms_master_key_id = var.kms_master_key_id
      }
    }
  }

  versioning {
    enabled = var.versioning_enabled
  }

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}
