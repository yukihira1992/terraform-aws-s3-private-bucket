provider "aws" {
  region = var.region
}

module "private_s3_bucket" {
  source = "../"

  bucket = "my-example-bucket"
  region = var.region
  versioning_enabled = true
  sse_algorithm = "AES256"
  tags = {
    Environment = "dev"
  }
}
