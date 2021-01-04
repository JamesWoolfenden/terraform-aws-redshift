# required
resource "random_id" "random_pass" {
  byte_length = 8
}

resource "aws_redshift_subnet_group" "subnet_group" {
  name       = local.redshift_subnets
  subnet_ids = var.public_subnets
  tags       = var.common_tags
}
