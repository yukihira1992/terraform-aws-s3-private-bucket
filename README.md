# terraform-aws-s3-private-bucket
Terraform module which creates private S3 bucket on AWS.

## Usage

```hcl-terraform
module "private_s3_bucket" {
  source = "yukihira1992/s3-private-bucket/aws"

  bucket = "my-example-bucket"
  region = "ap-northeast-1"
  versioning_enabled = true
  sse_algorithm = "AES256"
  tags = {
    Environment = "dev"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket | The name of the bucket. | string | n/a | yes |
| region | If specified, the AWS region this bucket should reside in. | string | `null` | no |
| versioning_enabled | Enable versioning. | bool | `false` | no |
| sse_algorithm | The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | string | `"AES256"` | no |
| kms_master_key_id | The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. | string | `null` | no |
| tags | A mapping of tags that identifies subset of objects to which the rule applies. | map(string) | `{}` | no |


## Outputs

| Name | Description |
|------|-------------|
| bucket | The name of the bucket. |
| arn | The ARN of the bucket. |
| bucket_domain_name | The bucket domain name. |
