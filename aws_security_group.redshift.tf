
resource "aws_security_group" "redshift" {
  name        = local.redshift_security_group
  description = "Allow JDBC traffic from VPC subnets"
  vpc_id      = var.vpc_id
  tags        = var.common_tags

  egress {
    protocol    = "tcp"
    description = "Allow all outbound traffic"
    from_port   = var.jdbc_port
    to_port     = var.jdbc_port
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    description = "Allow Redshift internal inbound traffic"
    from_port   = var.jdbc_port
    to_port     = var.jdbc_port
    cidr_blocks = [data.aws_vpc.vpc.cidr_block]
  }
}

locals {
  redshift_security_group = "${var.name_prefix}redshift-subnet-group"
}