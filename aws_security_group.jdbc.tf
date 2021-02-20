
resource "aws_security_group" "jdbc" {
  count       = length(var.jdbc_cidr) > 0 ? 1 : 0
  name        = local.jdbc_name
  description = "Allow query traffic from specified JDBC CIDR"
  vpc_id      = var.vpc_id


  ingress {
    protocol    = "tcp"
    description = "Allow Redshift inbound traffic from JDBC CIDR"
    from_port   = var.jdbc_port
    to_port     = var.jdbc_port
    cidr_blocks = var.jdbc_cidr
  }

  tags = var.common_tags
}

