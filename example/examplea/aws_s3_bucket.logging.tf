resource "aws_s3_bucket" "logging" {
  # checkov:skip=CKV2_AWS_6: ADD REASON
  # checkov:skip=CKV_AWS_21: ADD REASON
  # checkov:skip=CKV_AWS_18: ADD REASON
  # checkov:skip=CKV_AWS_144
  # checkov:skip=CKV_AWS_52
  # checkov:skip=CKV_AWS_145
  #tfsec:ignore:AWS077
  #tfsec:ignore:AWS002
  acl = "private"
  versioning {
    enabled = false
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
