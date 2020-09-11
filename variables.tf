variable "bucket" {
  description = "The name of the bucket."
}

variable "versioning_enabled" {
  description = "Enable versioning."
  default = false
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  default = "AES256"
}

variable "kms_master_key_id" {
  description = "The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms."
  default = null
}

variable "tags" {
  description = "A mapping of tags that identifies subset of objects to which the rule applies."
  default = {}
  type = "map"
}
