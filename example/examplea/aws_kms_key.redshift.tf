resource "aws_kms_key" "redshift" {
  enable_key_rotation = true
}
