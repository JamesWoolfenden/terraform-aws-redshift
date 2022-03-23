resource "aws_s3_bucket" "logging" {
  # checkov:skip=CKV2_AWS_37: Logging bucket
  # checkov:skip=CKV2_AWS_41: Logging bucket
  # checkov:skip=CKV_AWS_19:v4 legacy
  # checkov:skip=CKV_AWS_18:v4 legacy
  # checkov:skip=CKV_AWS_144:v4 legacy
  # checkov:skip=CKV_AWS_145:v4 legacy
  # checkov:skip=CKV_AWS_21:v4 legacy
  #tfsec:ignore:AWS077
  #tfsec:ignore:AWS002
}

resource "aws_s3_bucket_acl" "logging" {
  bucket = aws_s3_bucket.logging.bucket
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "logging" {
  bucket = aws_s3_bucket.logging.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "logging" {
  bucket = aws_s3_bucket.logging.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.redshift.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
