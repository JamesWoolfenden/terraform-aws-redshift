output "redshift" {
  value     = aws_redshift_cluster.redshift
  sensitive = true
}

output "params" {
  value = aws_redshift_subnet_group.subnet_group
}
