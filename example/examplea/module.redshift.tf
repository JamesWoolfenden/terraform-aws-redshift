module "redshift" {
  source              = "../../"
  common_tags         = var.common_tags
  name_prefix         = var.name_prefix
  jdbc_cidr           = var.jdbc_cidr
  jdbc_port           = var.jdbc_port
  skip_final_snapshot = true
  s3_logging_bucket   = aws_s3_bucket.logging.id
  s3_logging_path     = var.s3_logging_path
  node_type           = var.node_type
  num_nodes           = var.num_nodes
  database_name       = var.database_name
  port                = var.port
  admin_username      = var.admin_username
  kms_key_id          = aws_kms_key.redshift.arn
  vpc_id              = var.vpc_id
  admin_password      = var.admin_password
  public_subnets      = var.public_subnets
  identifier          = var.identifier
}