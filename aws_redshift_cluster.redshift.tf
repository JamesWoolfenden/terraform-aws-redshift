resource "aws_redshift_cluster" "redshift" {
  cluster_identifier        = local.cluster_identifier
  cluster_subnet_group_name = aws_redshift_subnet_group.subnet_group.name
  cluster_type              = var.num_nodes > 1 ? "multi-node" : "single-node"
  database_name             = var.database_name
  elastic_ip                = var.elastic_ip
  encrypted                 = true
  kms_key_id                = var.kms_key_id
  master_password           = local.master_password
  master_username           = var.admin_username
  node_type                 = var.node_type
  number_of_nodes           = var.num_nodes
  port                      = var.jdbc_port
  skip_final_snapshot       = var.skip_final_snapshot

  vpc_security_group_ids = flatten([
    [aws_security_group.redshift.id],
    aws_security_group.jdbc.*.id,
  ])

  logging {
    enable        = true
    bucket_name   = var.s3_logging_bucket
    s3_key_prefix = var.s3_logging_path
  }

  tags = var.common_tags
}
